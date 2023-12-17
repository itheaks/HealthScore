import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:googleapis/cloudkms/v1.dart';
import 'package:xyz/Quiz/faq.dart';
import 'package:xyz/detail.dart';
import 'package:xyz/healthcareapi.dart';
import 'package:xyz/mindgames.dart';
import 'package:xyz/nutrition.dart';
import 'package:xyz/profile.dart';
import 'package:xyz/quiz.dart';
import 'package:xyz/tdee.dart';
import 'certificate.dart';
import 'home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Course1Screen(),
    );
  }
}

class Course1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Enhance Knowledge',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 10),
        SizedBox(
          width: 0.9 * MediaQuery.of(context).size.width,
          child: CarouselSlider(
            items: [
              _buildFactCard(
                'Mental health is just as important as physical health; prioritize self-care and seek support when needed.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Consuming a variety of colorful fruits and vegetables provides a range of essential vitamins and minerals.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Maintaining a healthy weight through diet and exercise is crucial for preventing obesity-related diseases.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Moderate caffeine intake can enhance alertness, but excessive consumption may lead to negative health effects.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Regular dental check-ups and oral hygiene practices are essential for overall health, preventing gum disease and infections.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Bone density declines with age, making weight-bearing exercises crucial for maintaining bone health.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'The body circadian rhythm, influenced by sunlight, regulates sleep-wake cycles and overall well-being.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Omega-3 fatty acids, found in fish and flaxseed, are beneficial for heart health and brain function.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'High levels of stress can negatively impact physical and mental health; practice stress-management techniques.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Whole grains, rich in fiber, contribute to digestive health and can reduce the risk of chronic diseases.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Regular stretching improves flexibility, reduces the risk of injury, and promotes better posture.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Adequate sunlight exposure is essential for vitamin D synthesis, crucial for bone and immune health.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Balancing different food groups ensures a diverse intake of nutrients for optimal health.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Chronic inflammation is linked to various diseases; an anti-inflammatory diet can help reduce inflammation.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Engaging in activities you enjoy boosts mental well-being and reduces the risk of depression.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Maintaining proper posture supports spine health and reduces the risk of musculoskeletal issues.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Chronic stress can contribute to weight gain; manage stress to support a healthy weight.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Adequate water intake supports digestion, nutrient absorption, and overall bodily functions.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Regular cardiovascular exercise enhances lung capacity and improves respiratory health.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Mindful eating involves paying attention to food choices and savoring each bite, promoting healthier eating habits.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Building and maintaining strong social connections is associated with a longer, healthier life.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Maintaining a healthy gut microbiome through a balanced diet supports overall well-being.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Moderation is key; balance indulgent treats with nutritious foods for a well-rounded diet.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Regular health screenings, such as blood pressure and cholesterol checks, aid in early disease detection.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Setting realistic and achievable fitness goals promotes motivation and long-term success.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Mind-body practices like yoga and meditation can improve both physical and mental health.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'A good night sleep is essential for memory consolidation, emotional well-being, and overall health.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Limiting alcohol consumption supports liver health and reduces the risk of alcohol-related diseases.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Regular resistance training helps maintain muscle mass, strength, and overall functionality.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Building healthy habits takes time; be patient and consistent for lasting improvements in well-being.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Listening to your body hunger and fullness cues is crucial for maintaining a healthy weight.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Social support is a powerful motivator; exercise with friends or join fitness classes for added encouragement.',
                const Color(0xFFCD225F),
              ),
              _buildFactCard(
                'Practicing gratitude has positive effects on mental health and overall life satisfaction.',
                const Color(0xFF9CAC4C),
              ),
              _buildFactCard(
                'Balancing work and leisure activities promotes a well-rounded and fulfilling life.',
                const Color(0xFFCD225F),
              ),
            ],
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 18 / 9,
            ),
          ),
        ),
            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 0.4 * MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.brown], // Change the gradient colors to pink and brown
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TdeePage()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.fit_screen_outlined, // This is the book icon
                            color: Colors.white,
                            size: 40, // Adjust the size as needed
                          ),
                          SizedBox(width: 8), // Add some spacing between the icon and text
                          Text(
                            ' TDEE',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 0.4 * MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.pink, Colors.brown],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => UserDashboard()),
                        );
                      },
                      child: Row(
                        children: [
                          SizedBox(width: 10),
                          Icon(
                            Icons.lightbulb, // This is the book icon
                            color: Colors.white,
                            size: 40, // Adjust the size as needed
                          ),
                          SizedBox(width: 8), // Add some spacing between the icon and text
                          Text(
                            ' Games',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade600, Colors.purpleAccent, Colors.purple.shade600], // Change the gradient colors to pink and brown
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nutrition()),
                        );
                      },
                      child: Container(
                        //decoration: BoxDecoration(
                          //color: Colors.blue,
                          //borderRadius: BorderRadius.circular(8.0),
                        //),
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Measure Nutrition',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nutrition()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 0.9 * MediaQuery.of(context).size.width,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purple.shade600, Colors.purpleAccent, Colors.purple.shade600], // Change the gradient colors to pink and brown
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Nutrition()),
                        );
                      },
                      child: Container(
                        //decoration: BoxDecoration(
                        //color: Colors.blue,
                        //borderRadius: BorderRadius.circular(8.0),
                        //),
                        padding: EdgeInsets.all(16.0),
                        child: Center(
                          child: Text(
                            'Healthscore API ',
                            style: TextStyle(fontSize: 24, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Hackathon()),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 20),
        ]
        ),
      ),
    );
  }
}
Widget _buildFactCard(String text, Color backgroundColor) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 18, color: Colors.white),
      ),
    ),
  );
}