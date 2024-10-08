import 'package:web_socket_channel/web_socket_channel.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'dart:async';
import 'dart:convert';
import 'package:meddymobile/services/auth_service.dart'; // Import AuthService

typedef Handler = void Function(Map<String, dynamic>);

class WSConnection {
  WSConnection._() {
    _handlers['auth'] = _defaultAuthHandler;
    _initializeUserId(); // Initialize userId when the singleton is created
  }

  static final WSConnection _instance = WSConnection._();

  factory WSConnection() {
    return _instance;
  }

  WebSocketChannel? _channel;
  bool _isConnected = false;
  final String _serverUrl = 'wss://www.trymeddy.com/api/';
  // final String _serverUrl = 'ws://localhost:8000/api';

  final Map<String, Handler> _handlers = {};
  Completer<bool>? _authCompleter;
  final AuthService _authService =
      AuthService(); // Create an instance of AuthService
  String? userId; // Class-level userId

  Future<void> _initializeUserId() async {
    userId = await _authService.getIdToken(); // Fetch userId and store it
  }

  void setHandler(String type, Handler handler) {
    _handlers[type] = handler;
  }

  Future<void> connect() async {
    if (_isConnected) {
      print('WebSocket already connected');
      return;
    }
    try {
      userId = await _authService.getIdToken(); // Ensure idToken is fetched
      if (userId == null) {
        throw Exception('User not authenticated');
      }
      _channel = WebSocketChannel.connect(Uri.parse(_serverUrl));
      _isConnected = true;
      _channel?.stream.listen(
        _handleIncomingMessage,
        onDone: _handleDisconnect,
        onError: _handleError,
      );
      await authenticate();
    } catch (e) {
      print('WebSocket connection failed: $e');
      _isConnected = false;
    }
  }

  void _handleIncomingMessage(dynamic message) {
    try {
      Map<String, dynamic> parsedMessage = json.decode(message);
      String type = parsedMessage['type'] as String? ?? 'UNKNOWN';
      print('Received: $type');
      Handler handler = _handlers[type] ?? _handleUnknownMessage;
      handler(parsedMessage);
    } catch (e) {
      print('Error handling message: $e');
    }
  }

  void _handleUnknownMessage(Map<String, dynamic> message) {
    print('Received unknown message type: ${message['type']}');
  }

  void _handleDisconnect() {
    print('WebSocket connection closed');
    _isConnected = false;
  }

  void _handleError(error) {
    print('WebSocket error: $error');
    _isConnected = false;
  }

  Future<bool> authenticate() async {
    if (!_isConnected) {
      throw Exception('WebSocket is not connected');
    }

    _authCompleter = Completer<bool>();

    sendMessage({
      'type': 'auth',
      'data': {'idToken': userId!, 'source': 'mobile'} // Use userId here
    });

    return _authCompleter!.future;
  }

  void _defaultAuthHandler(Map<String, dynamic> _) {
    _authCompleter?.complete(true);
    _authCompleter = null;
  }

  void sendMessage(Object message) {
    if (_isConnected) {
      _channel?.sink.add(json.encode(message));
      // print('Sent: $message');
    } else {
      print('WebSocket is not connected');
    }
  }

  void disconnect() {
    if (_isConnected) {
      _channel?.sink.close(status.goingAway);
      _isConnected = false;
      print('WebSocket disconnected');
    }
  }

  bool get isConnected => _isConnected;
}
