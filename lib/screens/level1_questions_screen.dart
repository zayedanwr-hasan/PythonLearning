import 'package:flutter/material.dart';

class Level1QuestionsScreen extends StatelessWidget {
  const Level1QuestionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 1 Questions'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Question 1: What is Python?',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            Text(
              'Question 2: How do you print "Hello, World!" in Python?',
              style: TextStyle(fontSize: 18),
            ),
          
          ],
        ),
      ),
    );
  }
}
