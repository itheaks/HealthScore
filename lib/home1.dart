import 'package:flutter/material.dart';

class Home1Screen extends StatelessWidget {
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
//
// import 'package:flutter/material.dart';
// import 'home1.dart';
// import 'course1.dart';
// import 'chatbotpage.dart';
// import 'quiz.dart';
// import 'profile.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;
//
//   final List<Widget> _screens = [
//     Home1Screen(),
//     Course1Screen(),
//     ChatBotPage(),
//     QuizScreen(),
//     ProfileScreen(),
//   ];
//
//   void _onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   void _logout() {
//     // Implement your logout logic here
//     // For example, you can clear user data and navigate to the login screen.
//     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Bottom Nav Example',
//       home: Stack(
//         children: [
//           // Background Image
//           Positioned(
//             bottom: 0,
//             left: 0,
//             child: Image.asset(
//               'assets/ui.png',
//               width: MediaQuery.of(context).size.width,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Scaffold(
//             appBar: AppBar(
//               title: Text('Bottom Navigation Example'),
//               actions: [
//                 IconButton(
//                   icon: Icon(Icons.logout),
//                   onPressed: _logout,
//                 ),
//               ],
//             ),
//             body: _screens[_currentIndex],
//             bottomNavigationBar: BottomNavigationBar(
//               currentIndex: _currentIndex,
//               onTap: _onTabTapped,
//               items: [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.school),
//                   label: 'Course',
//                 ),
//                 // Dark Pink Circle for AI Chatbot
//                 BottomNavigationBarItem(
//                   icon: Stack(
//                     alignment: Alignment.center,
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.pinkAccent, // Dark Pink
//                         ),
//                         width: 48,
//                         height: 48,
//                       ),
//                       Icon(Icons.chat_bubble),
//                     ],
//                   ),
//                   label: 'AI Chatbot',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.quiz),
//                   label: 'Quiz',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.person),
//                   label: 'Profile',
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }


