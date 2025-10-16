import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/gallery_screen.dart';
import 'screens/notifications_screen.dart';
import 'screens/data_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Python Learning',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/data_list': (context) => const DataListScreen(),
      },
    );
  }
}

class NavigationBar extends StatelessWidget {
  final String currentRoute;

  const NavigationBar({required this.currentRoute, super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.photo),
          label: 'Gallery',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          label: 'Notifications',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'Data List',
        ),
      ],
      currentIndex: _getSelectedIndex(currentRoute),
      selectedItemColor: Colors.yellow,
      onTap: (index) {
        _onItemTapped(context, index);
      },
    );
  }

  int _getSelectedIndex(String route) {
    switch (route) {
      case '/home':
        return 0;
      case '/gallery':
        return 1;
      case '/notifications':
        return 2;
      case '/data_list':
        return 3;
      default:
        return 0;
    }
  }

  void _onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/gallery');
        break;
      case 2:
        Navigator.pushNamed(context, '/notifications');
        break;
      case 3:
        Navigator.pushNamed(context, '/data_list');
        break;
    }
  }
}
