import 'package:flutter/material.dart';
import 'package:jumping_dot/jumping_dot.dart';

class AnimatedStopButton extends StatefulWidget {
  final VoidCallback onPressed;
  const AnimatedStopButton({super.key, required this.onPressed});

  @override
  _AnimatedStopButtonState createState() => _AnimatedStopButtonState();
}

class _AnimatedStopButtonState extends State<AnimatedStopButton>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          JumpingDots(
            color: Colors.black,
            radius: 8,
            numberOfDots: 3,
          ),
          SizedBox(width: 8),
          _buildButton(),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return ElevatedButton(
      onPressed: widget.onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.black,
            ),
            child: Icon(Icons.circle, size: 15, color: Colors.orange),
          ),
          SizedBox(width: 8),
          Text(
            'Stop generating',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
