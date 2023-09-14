import 'package:flutter/material.dart';

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Quiz Page!',
            style: TextStyle(fontSize: 24),
          ),
          // Add the rest of your quiz content here
        ],
      ),
    );
  }
}
