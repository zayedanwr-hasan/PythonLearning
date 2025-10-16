import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'gallery_screen.dart';
import 'notifications_screen.dart';
import 'data_list_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacementNamed(context, '/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/Python-image/8fb52415c5e22f83a449ca359e2a373a.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Color.fromRGBO(0, 0, 0, 0.54), BlendMode.darken),
              ),
            ),
          ),
          Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Login Screen',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _usernameController,
                        decoration:const InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(255, 255, 255, 0.8),
                          border:  OutlineInputBorder(),
                          labelText: 'Username',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration:const InputDecoration(
                          filled: true,
                          fillColor: Color.fromRGBO(255, 255, 255, 0.8),
                          border:  OutlineInputBorder(),
                          labelText: 'Password',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _login,
                        child: const Text('Login'),
                      ),
                      const SizedBox(height: 20), // Added space between buttons
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, '/signup'); // Navigate to sign up screen
                        },
                        child: const Text('Sign Up'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        '/home': (context) => const HomeScreen(),
        '/gallery': (context) => const GalleryScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/data_list': (context) => const DataListScreen(),
        '/signup': (context) => const SignUpScreen(),
      },
    );
  }
}

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: const Center(
        child: Text('Sign Up Screen'),
      ),
    );
  }
}
