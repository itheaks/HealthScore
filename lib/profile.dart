import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final List<String> imageHeadings = [
    "Amit Kumar Singh",
    "Vivek Agarwal",
    "Zaiba Muskan D M",
    "Aniruddh DP",
    "Aditya G Kulkarni",
    "Saadyant P R",
  ];

  final List<String> imageDescriptions = [
    "Flutter Developer of the Team",
    "AI Chatbot Developer of the Team",
    "Researcher and Content maker of the team",
    "UI and Figma Designer of the Team",
    "Firebase, API controller of the Team",
    "Video editor and maker of the Team",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "About US",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.brown
            .shade50, // Set your preferred app bar color
      ),
      body: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          final imagePath = 'assets/${index + 1}.png';

          return Card(
            elevation: 5, // Add elevation for a card-like effect
            margin: EdgeInsets.all(8), // Add margin to separate cards
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.asset(
                  imagePath,
                  height: 300, // Set the desired image height
                  fit: BoxFit
                      .cover, // Maintain aspect ratio and cover the space
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    imageHeadings[index],
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    imageDescriptions[index],
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
