// import 'package:flutter/material.dart';
// import 'package:googleapis/fitness/v1.dart' as fitness;
// import 'package:googleapis_auth/auth_io.dart' as auth;
// import 'package:http/http.dart' as http;
// import 'package:url_launcher/url_launcher.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Google Fit App',
//       theme: ThemeData(
//         primarySwatch: Colors.green, // Change color as needed
//         accentColor: Colors.pink,   // Change color as needed
//       ),
//       home: FitDataScreen(),
//     );
//   }
// }
//
// class FitDataScreen extends StatefulWidget {
//   @override
//   _FitDataScreenState createState() => _FitDataScreenState();
// }
//
// class _FitDataScreenState extends State<FitDataScreen> {
//   final _scopes = [fitness.FitnessApi.FitnessActivityReadScope];
//   final _credentials = auth.ClientId(
//     'YOUR_CLIENT_ID',
//     'YOUR_CLIENT_SECRET',
//   );
//
//   bool _isAuthenticated = false;
//   String _fitData = '';
//   String _error = '';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Fit Data'),
//       ),
//       body: Center(
//         child: _isAuthenticated
//             ? Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 await _getFitData();
//               },
//               child: Text('Get Fitness Data'),
//             ),
//             SizedBox(height: 20),
//             Text('Fit Data: $_fitData'),
//             SizedBox(height: 20),
//             Text('Error: $_error', style: TextStyle(color: Colors.red)),
//           ],
//         )
//             : ElevatedButton(
//           onPressed: () async {
//             await _authenticate();
//           },
//           child: Text('Authenticate with Google'),
//         ),
//       ),
//     );
//   }
//
//   Future<void> _authenticate() async {
//     final client = await auth.clientViaUserConsent(_credentials, _scopes, prompt)
//     as http.Client;
//
//     try {
//       setState(() {
//         _isAuthenticated = true;
//       });
//     } catch (e) {
//       print('Error during authentication: $e');
//       setState(() {
//         _error = 'Error during authentication';
//       });
//     } finally {
//       client.close();
//     }
//   }
//
//   Future<void> _getFitData() async {
//     final client = await auth.clientViaUserConsent(_credentials, _scopes, prompt)
//     as http.Client;
//
//     try {
//       final fitnessApi = fitness.FitnessApi(client);
//
//       // Perform operations with the fitness API here
//
//       // Example: Retrieve fitness data
//       final dataSet = await fitnessApi.users.dataSources.datasets.get(
//         'me',
//         'derived:com.google.step_count.delta:com.google.android.gms:estimated_steps',
//         'today',
//       );
//
//       setState(() {
//         _fitData = dataSet.toString();
//       });
//     } catch (e) {
//       print('Error getting fitness data: $e');
//       setState(() {
//         _error = 'Error getting fitness data';
//       });
//     } finally {
//       client.close();
//     }
//   }
//
//   Future<void> prompt(String url) async {
//     // Display the authorization URL to the user and wait for them to authorize the app
//     await launch(url);
//   }
// }
