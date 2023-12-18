import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:xyz/course1.dart';
import 'package:xyz/home1.dart';
import 'package:xyz/mindgames.dart';
import 'package:xyz/nutrition.dart';
import 'package:xyz/profile.dart';
import 'package:xyz/quiz.dart';
import 'package:xyz/tdee.dart';
import 'chatbotpage.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  final User user;

  HomePage({required this.user});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    Course1Screen(),
    TdeePage(),
    ChatBotPage(),
    UserDashboard(),
    Nutrition(),
  ];

  Future<void> _signOut(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Welcome to Health Score")),
        backgroundColor: Color(0xffb8d695),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        //type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: "TDEE",
          ),
          BottomNavigationBarItem(
            icon: Container(
              height: 65,
              width: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xfffceec1),
              ),
              child: Icon(
                Icons.chat,
                color: Color(0xff1e8155),
              ),
            ),
            label: "Chatbot",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: "Games",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: "Nutrition",
          ),
        ],
        selectedItemColor: Color(0xff1e8155),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffb8d695),
      ),
    );
  }
}

