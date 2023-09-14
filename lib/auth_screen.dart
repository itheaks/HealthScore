//
//
// import 'dart:js';
//
// import 'package:flutter/material.dart';
//
// import 'auth_service.dart';
// import 'home_screen.dart';
//
// class AuthScreen extends StatelessWidget {
//   final AuthService _authService = AuthService();
//   final TextEditingController _emailController = TextEditingController();
//   final TextEditingController _passwordController = TextEditingController();
//
//   Future<void> _signIn() async {
//     final String email = _emailController.text;
//     final String password = _passwordController.text;
//     final user = await _authService.signInWithEmailAndPassword(email, password);
//
//     if (user != null) {
//       // Navigate to the home screen after successful sign-in
//       Navigator.pushReplacement(
//         context as BuildContext,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//
//       //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
//     } else {
//       // Handle sign-in failure
//       // Show error message to the user
//     }
//   }
//
//   Future<void> _signUp() async {
//     final String email = _emailController.text;
//     final String password = _passwordController.text;
//     final user = await _authService.signUpWithEmailAndPassword(email, password);
//
//     if (user != null) {
//       // Navigate to the home screen after successful sign-up
//       Navigator.pushReplacement(
//         context as BuildContext,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//
//       //Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => HomeScreen()));
//     } else {
//       // Handle sign-up failure
//       // Show error message to the user
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Authentication'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//             ),
//             TextFormField(
//               controller: _passwordController,
//               decoration: InputDecoration(labelText: 'Password'),
//               obscureText: true,
//             ),
//             ElevatedButton(
//               onPressed: _signIn,
//               child: Text('Sign In'),
//             ),
//             ElevatedButton(
//               onPressed: _signUp,
//               child: Text('Sign Up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
