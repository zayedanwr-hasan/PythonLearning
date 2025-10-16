<<<<<<< HEAD
# Python Learning (PaythonLearning)

Quick, concise README for the project.

Overview
- Flutter app (Dart) for learning Python basics.
- Entry point: `lib/screens/login_screen.dart` (contains `main()` and routes).

Quick start
1. Open a terminal in project root.

```powershell
cd f:\StudioProjects\paythonlearning
flutter pub get
flutter run
```

2. Use hot reload to see code changes quickly.

Routes
- `/home` -> `HomeScreen`
- `/gallery` -> `GalleryScreen`
- `/notifications` -> `NotificationsScreen`
- `/data_list` -> `DataListScreen`
- `/signup` -> `SignUpScreen`

Assets
- Images are in `assets/Python-image/` and are declared in `pubspec.yaml`.

Recent fixes (short)
- Fixed layout/syntax issues in `home_screen.dart`.
- Replaced deprecated `.withOpacity()` with `Color.fromRGBO(...)`.
- Ensured drawer closes before navigating and prevented redundant navigation in bottom bar.
- Replaced semi-transparent containers with `Card` + elevation to improve text visibility.

