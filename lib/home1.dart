import 'package:flutter/material.dart';
import 'Chapter/Chapter1.dart';
import 'Chapter/Chapter10.dart';
import 'Chapter/Chapter2.dart';
import 'Chapter/Chapter3.dart';
import 'Chapter/Chapter4.dart';
import 'Chapter/Chapter5.dart';
import 'Chapter/Chapter6.dart';
import 'Chapter/Chapter7.dart';
import 'Chapter/Chapter8.dart';
import 'Chapter/Chapter9.dart';

class Home1Screen extends StatelessWidget {
  final List<String> boxTexts = [
    'Patents', 'Copyrights', 'Trademarks', 'Industrial Design', 'GI Tag',
    'Trade Secrets', 'Traditional\nKnowledge', 'SICLD', 'Plants', 'Biodiversity',
  ];

  final List<Widget> screenList = [
    Chapter1(),
    Chapter2(),
    Chapter3(),
    Chapter4(),
    Chapter5(),
    Chapter6(),
    Chapter7(),
    Chapter8(),
    Chapter9(),
    Chapter10(),
    // Add more screens here as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Learning Section',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            'Boost your knowledge!!',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: boxTexts.length,
              itemBuilder: (context, index) {
                Color borderColor;
                double borderWidth;
                String label;

                // Determine border color, width, and label based on index
                if (index < 2) {
                  // First 2 boxes with light green
                  borderColor = Colors.orange.shade200;
                  borderWidth = 5.0;
                  label = 'Basic';
                } else if (index < 6) {
                  // Next 4 boxes with dark green
                  borderColor = Colors.orange.shade500;
                  borderWidth = 10.0;
                  label = 'Intermediate';
                } else {
                  // Last 4 boxes with darkest green
                  borderColor = Colors.orange.shade800;
                  borderWidth = 15.0;
                  label = 'Advanced';
                }

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => screenList[index],
                      ), // Navigate to the selected screen
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor,
                        width: borderWidth,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Chapter', // Add the welcome text here
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '$label', // Add the welcome text here
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          boxTexts[index],
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
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
