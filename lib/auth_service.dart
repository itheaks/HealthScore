// import 'package:firebase_auth/firebase_auth.dart';
//
// class AuthService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//
//   // Sign up with email and password
//   Future<User?> signUpWithEmailAndPassword(String email, String password) async {
//     try {
//       final UserCredential authResult = await _auth.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       final User? user = authResult.user;
//       return user;
//     } catch (e) {
//       print("Error signing up: $e");
//       return null;
//     }
//   }
//
//   // Sign in with email and password
//   Future<User?> signInWithEmailAndPassword(String email, String password) async {
//     try {
//       final UserCredential authResult = await _auth.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       final User? user = authResult.user;
//       return user;
//     } catch (e) {
//       print("Error signing in: $e");
//       return null;
//     }
//   }
//
//   // Sign out
//   Future<void> signOut() async {
//     await _auth.signOut();
//   }
// }
