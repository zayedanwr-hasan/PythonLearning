import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  int _selectedIndex = 2;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.pushNamed(context, '/home');
        break;
      case 1:
        Navigator.pushNamed(context, '/gallery');
        break;
      case 2:
        break;
      case 3:
        Navigator.pushNamed(context, '/dataList');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:
            const IconThemeData(color: Color(0xFFFFD43B)), 
        title: const Text(
          'Notifications',
          style: TextStyle(
            color: Color(0xFFFFD43B),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF306998),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color(0xFF306998),
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 16.0),
                  child: ListTile(
                    leading: const Icon(Icons.notifications,
                        color: Color(0xFFFFD43B)),
                    title: Text(
                      'Notification ${index + 1}',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    subtitle: Text(
                      'This is the detail of notification ${index + 1}.',
                      style: const TextStyle(color: Colors.white),
                    ),
                    trailing: const Icon(Icons.arrow_forward,
                        color: Color(0xFF306998)),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
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
