import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigateToLevel1Questions(BuildContext context) {
    Navigator.pushNamed(context, '/level1_questions');
  }

  void _onStartLevel1Pressed() {
    _navigateToLevel1Questions(context);
  }

  List<Widget> get _widgetOptions => <Widget>[
        Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/Python-image/8fb52415c5e22f83a449ca359e2a373a.jpg',
                fit: BoxFit.cover,
                color: Color.fromRGBO(0, 0, 0, 0.54),
                colorBlendMode: BlendMode.darken,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Color.fromRGBO(255, 255, 255, 0.95),
                        elevation: 12,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: DefaultTextStyle(
                            style: const TextStyle(color: Colors.black),
                            child: Column(
                              children: const [
                                Text(
                                  'Welcome to the Python Learning Game!',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Start your journey from beginner to expert in Python programming. '
                                  'Each level will challenge you with new concepts and exercises. '
                                  'Good luck and have fun!',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: Color.fromRGBO(255, 255, 255, 0.9),
                          foregroundColor: Colors.black,
                        ),
                        onPressed: _onStartLevel1Pressed,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Row(
                            children: [
                              const Icon(Icons.play_arrow,
                                  color: Colors.yellow, size: 32),
                              const SizedBox(width: 12),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const [
                                    Text(
                                      'Start Level 1: Introduction to Python',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 4),
                                    Text(
                                      'Learn the basics of Python programming with interactive exercises.',
                                      style: TextStyle(
                                          color: Color.fromRGBO(0, 0, 0, 0.54)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Text('Gallery Page'),
        const Text('Notifications Page'),
        const Text('Data List Page'),
      ];

  void _onItemTapped(int index) {
    if (index == _selectedIndex) return; // avoid re-navigating to same page
    setState(() {
      _selectedIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.pushReplacementNamed(context, '/home');
        break;
      case 1:
        Navigator.pushReplacementNamed(context, '/gallery');
        break;
      case 2:
        Navigator.pushReplacementNamed(context, '/notifications');
        break;
      case 3:
        Navigator.pushReplacementNamed(context, '/data_list');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFFFD43B)),
        title: const Text(
          'Home',
          style: TextStyle(
            color: Color(0xFFFFD43B),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF306998),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blue, Colors.yellow],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.blue),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.photo, color: Colors.blue),
              title: const Text('Gallery'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/gallery');
              },
            ),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.blue),
              title: const Text('Notifications'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/notifications');
              },
            ),
            ListTile(
              leading: const Icon(Icons.list, color: Colors.blue),
              title: const Text('Data List'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/data_list');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
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
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFFFFD43B),
        unselectedItemColor: const Color(0xFF306998),
        onTap: _onItemTapped,
      ),
    );
  }
}
