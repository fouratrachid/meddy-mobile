Meddy Mobile App
================

Overview
--------

Meddy is a comprehensive health and wellness mobile application built with Flutter. It provides users with personalized health insights, fitness tracking, reminders, and an AI-powered chat interface for health-related queries.


![Meddy Home Screen](/screenshots/Simulator_Screen_Recording_-_iPhone_15_Pro_Max_-_2024-08-10_at_22.29.32.gif)

Meddy Home Screen

Features
--------

*   **User Authentication:** Google Sign-In integration for secure access.
*   **Home Dashboard:** Displays user's health summary and quick access to key features.
*   **AI Chat Interface:** Engage with an AI assistant for health-related questions and advice.
*   **Health Tracking:** View and analyze health metrics including heart rate, steps, and sleep patterns.
*   **Reminders:** Set and manage medication and appointment reminders.
*   **Voice Interaction:** Voice-based interaction with the AI assistant.
*   **Multilingual Support:** Toggle between English and Spanish languages.
*   **Accessibility:** High contrast mode for improved visibility.
![AI Chat Interface](/screenshots/simulator_screenshot_F59DDA4E-E5FA-4E22-AABA-861369438BA4.png)

AI Chat Interface

![Reminders Screen](/screenshots/simulator_screenshot_2E72874C-478C-4FD5-B4CE-AB78511D293C.png)

Reminders Screen

![Health Activity](/screenshots/simulator_screenshot_0F7A80B8-9672-41C1-80FE-126BDF6D66A8.png)

Health Activity 

![Health Summary Dashboard](/screenshots/simulator_screenshot_E4AD6B97-0569-4790-98CC-CFAED9397C0B.png)

Health Summary Dashboard

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

*   `firebase_auth`: For Google Sign-In authentication
*   `provider`: For state management
*   `http`: For API requests
*   `fl_chart`: For rendering health data charts
*   `rive`: For animated assets
*   `image_picker`: For camera and gallery image selection
*   `intl`: For date formatting
*   `uuid`: For generating unique identifiers

Configuration
-------------

*   Update the `baseUrl` in `lib/services/chat_service.dart` and other service files to point to your backend API.
*   Ensure all required environment variables are set in your CI/CD pipeline or local development environment.


Acknowledgments
---------------

*   Thanks to all contributors who have helped shape Meddy.
*   Special thanks to the Flutter and Dart teams for their excellent framework and language.
