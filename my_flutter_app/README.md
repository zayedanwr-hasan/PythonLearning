# My Flutter App

This project is a Flutter application that includes a login screen using Google authentication, a home screen displaying a list of games, and support for dark mode using Riverpod.

## Project Structure

```
my_flutter_app
├── lib
│   ├── main.dart                     # Entry point of the application
│   ├── screens
│   │   ├── login_screen.dart         # Login screen with Google sign-in
│   │   ├── home_screen.dart          # Home screen displaying games
│   ├── services
│   │   └── firebase_auth_service.dart # Firebase authentication service
│   ├── widgets
│   │   └── game_card.dart            # Widget for displaying game cards
│   ├── providers
│       └── theme_provider.dart        # Provider for theme management
├── pubspec.yaml                      # Flutter project configuration
└── README.md                         # Project documentation
```

## Features

- **Google Authentication**: Users can log in using their Google accounts.
- **Home Screen**: Displays a list of games in a grid format.
- **Game Card Widget**: Each game is represented by a card that includes an icon and title.
- **Dark Mode Support**: The application supports light and dark themes using Riverpod for state management.

## Setup Instructions

1. Clone the repository:
   ```
   git clone <repository-url>
   ```

2. Navigate to the project directory:
   ```
   cd my_flutter_app
   ```

3. Install the dependencies:
   ```
   flutter pub get
   ```

4. Set up Firebase for your project and configure the `firebase_auth_service.dart` file with your Firebase credentials.

5. Run the application:
   ```
   flutter run
   ```

## Dependencies

- Flutter
- Riverpod
- Firebase
- Lottie

## License

This project is licensed under the MIT License. See the LICENSE file for details.