// import 'dart:js';
//
// import 'package:flutter/material.dart';
// import 'package:xyz/auth_screen.dart';
//
// import 'auth_service.dart';
//
// class HomeScreen extends StatelessWidget {
//   final AuthService _authService = AuthService();
//
//   Future<void> _signOut() async {
//     await _authService.signOut();
//     // Navigate back to the authentication screen
//     Navigator.pushReplacement(
//       context as BuildContext,
//       MaterialPageRoute(builder: (_) => AuthScreen()),
//     );
//
//     //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => AuthScreen()));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Welcome'),
//         actions: <Widget>[
//           TextButton.icon(
//             onPressed: _signOut,
//             icon: Icon(Icons.exit_to_app),
//             label: Text('Sign Out'),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Welcome to your app!'),
//       ),
//     );
//   }
// }
