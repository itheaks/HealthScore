import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'forgetpassword.dart';
import 'signup.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  String _email = "";
  String _password = "";

  Future<void> _signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        return; // User canceled Google Sign-In
      }

      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final UserCredential userCredential = await _auth.signInWithCredential(credential);
      // User is successfully logged in
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => HomePage(user: userCredential.user!),
        ),
      );
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Failed to log in with Google."),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: 'Email'),
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _email = value ?? "";
                  },
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(labelText: 'Password'),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _password = value ?? "";
                  },
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _signInWithEmailAndPassword,
                  child: Text('Login'),
                ),
                // TextButton(
                //   onPressed: () async {
                //     if (_email.isNotEmpty) {
                //       try {
                //         await _auth.sendPasswordResetEmail(email: _email);
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           SnackBar(
                //             content: Text("Password reset email sent to $_email"),
                //           ),
                //         );
                //       } catch (e) {
                //         print("Error sending password reset email: $e");
                //         ScaffoldMessenger.of(context).showSnackBar(
                //           SnackBar(
                //             content: Text("Failed to send password reset email. Please check your email address."),
                //           ),
                //         );
                //       }
                //     } else {
                //       ScaffoldMessenger.of(context).showSnackBar(
                //         SnackBar(
                //           content: Text("Please enter your email address to reset your password."),
                //         ),
                //       );
                //     }
                //   },
                //   child: Text('Forgot Password?'),
                // ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ForgetPasswordPage(),
                      ),
                    );
                  },
                  child: Text('Forgot Password?'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => SignupPage(),
                      ),
                    );
                  },
                  child: Text('Sign Up'),
                ),
                ElevatedButton(
                  onPressed: _signInWithGoogle,
                  child: Text('Login with Google'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _signInWithEmailAndPassword() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: _email,
          password: _password,
        );
        // User is successfully logged in
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => HomePage(user: userCredential.user!),
          ),
        );
      } catch (e) {
        // Handle login errors (e.g., invalid credentials)
        print("Error: $e");
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("Failed to log in. Please check your credentials."),
          ),
        );
      }
    }
  }
}
