Meddy Mobile App
================

Overview
--------

Meddy is a comprehensive health and wellness mobile application built with Flutter. It provides users with personalized health insights, fitness tracking, reminders, and an AI-powered chat interface for health-related queries.


![Meddy Home Screen](/screenshots/Simulator_Screen_Recording_-_iPhone_15_Pro_Max_-_2024-08-10_at_22.29.32.gif)

**Meddy Home Screen**

Features
--------

### 1\. User Authentication

*   Google Sign-In integration for secure access
*   User profile management

### 2\. Home Dashboard

*   Overview of user's health summary
*   Quick access to key features
*   Customizable health question cards

### 3\. AI-Powered Chat Interface

*   Real-time chat with an AI health assistant
*   Support for text and image inputs
*   Voice-based interaction capability
*   Chat history persistence

### 4\. Health Tracking and Analytics

*   Comprehensive health metrics tracking:
    *   Heart rate monitoring
    *   Step counting
    *   Sleep pattern analysis
*   Visual representation of health data using charts and graphs
*   Detailed health summary with scores for various health aspects:
    *   Metabolic health
    *   Heart health
    *   Gut health
    *   Brain health
    *   Immune system
    *   Musculoskeletal health
    *   Hormonal profile

### 5\. Medication and Appointment Reminders

*   Create, edit, and delete reminders
*   Set recurring reminders (daily, weekdays, weekends)
*   View upcoming and today's reminders

### 6\. Multilingual Support

*   Toggle between English, French, Arabic and Spanish languages
*   Dynamic text translation throughout the app

### 7\. Accessibility Features

*   High contrast mode for improved visibility
*   Voice-based interaction for hands-free use

### 8\. Integration with Health Services

*   Connection with Google Fit for fitness data
*   Potential integrations with other health apps and services

### 9\. Advanced UI/UX Features

*   Animated components for enhanced user engagement
*   Real-time visual feedback during voice interactions
*   Image capture and gallery selection for health-related queries

<div style="display: flex; justify-content: space-between; margin-bottom: 20px;">
  <div style="text-align: center;">
    <img src="/screenshots/simulator_screenshot_F59DDA4E-E5FA-4E22-AABA-861369438BA4.png" width="350" height="700" alt="AI Chat Interface">
    <p>AI Chat Interface</p>
  </div>
  <div style="text-align: center;">
    <img src="/screenshots/simulator_screenshot_2E72874C-478C-4FD5-B4CE-AB78511D293C.png" width="350" height="700" alt="Reminders Screen">
    <p>Reminders Screen</p>
  </div>
</div>

<div style="display: flex; justify-content: space-between;">
  <div style="text-align: center;">
    <img src="/screenshots/simulator_screenshot_0F7A80B8-9672-41C1-80FE-126BDF6D66A8.png" width="350" height="700" alt="Health Activity">
    <p>Health Activity</p>
  </div>
  <div style="text-align: center;">
    <img src="/screenshots/simulator_screenshot_E4AD6B97-0569-4790-98CC-CFAED9397C0B.png" width="350" height="700" alt="Health Summary Dashboard">
    <p>Health Summary Dashboard</p>
  </div>
</div>

Project Structure
-----------------

*   `lib/`: Main application code
    *   `models/`: Data models for health and chat information
    *   `pages/`: Individual screen implementations
    *   `providers/`: State management using Provider
    *   `services/`: API and backend service integrations
    *   `utils/`: Utility functions and constants
    *   `widgets/`: Reusable UI components

Setup and Installation
----------------------

1.  Ensure you have Flutter installed on your machine.
2.  Clone the repository: `git clone https://github.com/your-repo/meddy-mobile.git`
3.  Navigate to the project directory: `cd meddy-mobile`
4.  Install dependencies: `flutter pub get`
5.  Set up Firebase:
    *   Create a new Firebase project
    *   Add your `google-services.json` (for Android) and `GoogleService-Info.plist` (for iOS) to the respective app directories
6.  Run the app: `flutter run`

Dependencies
------------

*   `flutter`: The core framework for building the app
*   `firebase_core`: Firebase core functionality
*   `firebase_auth`: For Google Sign-In authentication
*   `google_sign_in`: For Google Sign-In integration
*   `provider`: For state management
*   `http`: For making HTTP requests
*   `flutter_riverpod`: Another state management solution used in parts of the app
*   `web_socket_channel`: For WebSocket connections
*   `uuid`: For generating unique identifiers
*   `image_picker`: For camera and gallery image selection
*   `path`: For file path manipulations
*   `intl`: For internationalization and date formatting
*   `record`: For audio recording functionality
*   `sound_stream`: For audio streaming
*   `flutter_markdown`: For rendering Markdown content
*   `flutter_svg`: For rendering SVG images
*   `carousel_slider`: For implementing image carousels
*   `fl_chart`: For rendering charts and graphs
*   `skeletonizer`: For creating skeleton loading effects
*   `percent_indicator`: For circular percent indicators
*   `rive`: For Rive animations
*   `blur`: For applying blur effects
*   `typewritertext`: For typewriter text animations
*   `jumping_dot`: For jumping dot animations
*   `aura_box`: For creating aura effects
*   `siri_wave`: For Siri-like waveform animations

Configuration
-------------

*   Update the `baseUrl` in `lib/services/chat_service.dart` and other service files to point to your backend API.
*   Ensure all required environment variables are set in your CI/CD pipeline or local development environment.


Acknowledgments
---------------

*   Thanks to all contributors who have helped shape Meddy.
*   Special thanks to the Flutter and Dart teams for their excellent framework and language.
