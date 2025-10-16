import 'package:flutter/material.dart';

// Define a custom theme based on Python logo colors
final ThemeData appTheme = ThemeData(
  primaryColor: const Color.fromARGB(255, 6, 77, 134),
  hintColor: const Color(0xFFFFD43B), 
  scaffoldBackgroundColor: Colors.white,
  cardColor: const Color(0xFF306998),
  textTheme: const TextTheme(
    titleLarge: TextStyle(color: Colors.white),
    titleMedium: TextStyle(color: Colors.white),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF306998)),
);

class DataListScreen extends StatelessWidget {
  const DataListScreen({super.key});

  final List<Map<String, String>> levels = const [
    {
      'title': 'Level 1: Introduction to Python',
      'subtitle': 'Learn the basics of Python programming.'
    },
    {
      'title': 'Level 2: Data Types and Variables',
      'subtitle': 'Understand different data types and how to use variables.'
    },
    {
      'title': 'Level 3: Control Structures',
      'subtitle': 'Learn about loops and conditional statements.'
    },
    {
      'title': 'Level 4: Functions and Modules',
      'subtitle': 'Learn how to create and use functions and modules.'
    },
    {
      'title': 'Level 5: File Handling',
      'subtitle': 'Learn how to read from and write to files.'
    },
    {
      'title': 'Level 6: Error Handling',
      'subtitle': 'Understand how to handle errors and exceptions.'
    },
    {
      'title': 'Level 7: Object-Oriented Programming',
      'subtitle': 'Learn the principles of object-oriented programming.'
    },
    {
      'title': 'Level 8: Advanced Topics',
      'subtitle': 'Explore advanced topics like decorators and generators.'
    },
    {
      'title': 'Level 9: Libraries and Frameworks',
      'subtitle': 'Get introduced to popular libraries and frameworks.'
    },
    {
      'title': 'Level 10: Projects and Practice',
      'subtitle': 'Work on projects to practice your skills.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFFFFD43B)),
          onPressed: () {
            Navigator.of(context).pushNamed('/home');
          },
        ),
        title: const Text(
          'Python Learning Levels',
          style: TextStyle(
            color: Color(0xFFFFD43B),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        backgroundColor: appTheme.primaryColor,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: levels.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  color: appTheme.cardColor,
                  child: ListTile(
                    leading: Icon(Icons.star, color: appTheme.hintColor),
                    title: Text(levels[index]['title']!,
                        style: appTheme.textTheme.titleLarge),
                    subtitle: Text(levels[index]['subtitle']!,
                        style: appTheme.textTheme.titleMedium),
                    onTap: () {},
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
