import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imagePaths = [
      'assets/Python-image/4b6fc83b381b422835fe4ef6fa9f2698.jpg',
      'assets/Python-image/8fb52415c5e22f83a449ca359e2a373a.jpg',
      'assets/Python-image/2efa1f482461ed307708623b990dc8c4.jpg',
      'assets/Python-image/6bdb36833b7419c455f6c1a825bb4bc7.jpg',
      'assets/Python-image/94f47163262e73cde00c2283ecb9d635.jpg',
      'assets/Python-image/b629e0c49b0a480354587f98f1c2d098.jpg',
      'assets/Python-image/61322f768fa8e7e9466404986494574c.jpg',
      'assets/Python-image/6bdb36833b7419c455f6c1a825bb4bc7.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color(0xFFFFD43B)),
        title: const Text(
          'Gallery',
          style: TextStyle(
            color: Color(0xFFFFD43B),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: const Color(0xFF306998),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: imagePaths.length,
        itemBuilder: (context, index) {
          return Card(
            child: Image.asset(
              imagePaths[index],
              fit: BoxFit.cover,
            ),
          );
        },
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
        currentIndex: 1, 
        selectedItemColor: const Color(0xFFFFD43B),
        unselectedItemColor: const Color(0xFF306998),
        onTap: (index) {
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
        },
      ),
    );
  }
}
