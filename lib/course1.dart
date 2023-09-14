import 'package:flutter/material.dart';

class Course1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course Page'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome to the Course Page!',
            style: TextStyle(fontSize: 24),
          ),
          // Add the rest of your course content here
        ],
      ),
    );
  }
}
