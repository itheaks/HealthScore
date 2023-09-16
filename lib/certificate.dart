// import 'package:flutter/material.dart';
// import 'package:gsheets/gsheets.dart';
// import 'package:intl/intl.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// const _credentials = r'''
// {
//   "type": "service_account",
//   "project_id": "legal-minds-399202",
//   "private_key_id": "b29027fdf4c2e875c4d1d2d876270727c33a51ed",
//   "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDBcehU4vtLwKc5\nZw30DF/gmfUfU4xVfhMYJD69ykN0Emk8cSAQJIKi7ETGLNDljRU9t1wK0zhU13L/\nhucpZwuIkepIjahp8RJhRKWMekdjlRAoL32V4S0mZNe8ks8zsQLYqNa9XlHtwq6h\nVEwEH288l7/cWMHhMlyCHeymm3r/dV2bnvr8/jpRZ03DrsS2cMbq+liL/rsLhCkj\nR3RgoSObSKA6DERYKjTmhvv2HtekOx8LeqPkVlZIdYyss2hR8LeQ6Xb6Me8RudLD\nolPA2J0ARHblLujdVsxMgQUJu5aAiBVVuLYjapL1lcK00RwG8uFzhwonl7Aigv6u\nI89ywAM5AgMBAAECggEAEp4nabAU1oQatBQejCv6uE+o/1RXr8y8ArlOTo7echfp\nh/ctSlBxQEP0FIywqD8tWazBj4sno0a/Gye9LMdtnT3J6iS0Hkok5jaopj4Ii+WH\nUg7MC/ZJlaXj+5K3nXZ+WyLY1A31Xag8jWtjC4yI9LB4NzlVo5pou98sbRaOvnI+\n3TRsbpAgKsCKFxt7tQ58rJ9SCX4z/i4V45wM6YB1no1JIqEmKIFNMk3heJymrbPX\n2tZqpHw4OTtF18Ot1FwFadUNt2U1DjPacb7EzMeB714uWt9Ico3Zlg/WJihRk7Kz\n+00PCX+MVXAsjft0wbAr+GdDvPXyOOnteo8ztlzJ/wKBgQDtP4sTHAYZpN1BjmCT\nolERWcR27csssMqDh2Q/jgZmYxNKJqwq6osz7vG5qLpH1Vh/ZePRnxsdRzWgaDP7\n/N/QrQeL5qEzpkgef2C38tEI6JAZqZmDaZkG9WJsyZjagHblSQQP8PLDLCLGld+x\ndlq7Iw8mHJNYW9Ku3ji97N8VkwKBgQDQvA2rkVDSAHbGg9uaW8/tScc8W12lG6FP\n+8vOqgC1Q531/Yc7whqPvxqIws4OCdYe4OU8SWBz0R035jGimFL3QKT+7OOxcGZA\ntmrxuYVZAOkTv6Bh3eddzrYI+uVwaDN0rnEPDOGgtP5CEMciuH5ufpsS2bzCzwXu\n/k0nvdPDgwKBgF4mkXKL9H/IxWV2syzjhXh1P1pTFAYwQq3f1RDDtBZ9yvHqVvjR\nC10YviUHqKVJLU2hib9ufLwpvkZiE/80Yz3U7OHALMjqfEReGGvnmL0ITedhPuK/\nzVLNnrm9Z0OPJ5/mUg5heHWr1kEoyRUL+wW47BIb1P2DsyBiX/I/RmixAoGACRSV\nN6h7rpcMk7g6vm1OD1GNVEfZPAyGqPcYN6ZXn4sQfRoJXwUjqKs0mUx4ME4nPXKl\nJkk+4+rt7XebIyqjOVRbmSdvBFIScLA+2MMsVOHgQdatQHSp0v/iFWPsxUYTLvlD\nu9bgneAhy3f1YcJK5b2mO1yzhHoDFRGFA7yTUMcCgYEAsQ95vab06NFKHUarC9JW\nAu7SUWKi6Ruc0PpmvGJRHeQcJKZMoA6dvz/m7zQ44qSI7FoZ8qsVRr+rRIP9DyD5\n/ymtwZbEYB0g3h0OqLruSIe9r3znd4pb08OXq1erRJp7J5IK3LGrsHglNH9d+dhY\nTzzpGT17u8xnHGHQ2L2J/I0=\n-----END PRIVATE KEY-----\n",
//   "client_email": "legal-minds@legal-minds-399202.iam.gserviceaccount.com",
//   "client_id": "105623776348133290992",
//   "auth_uri": "https://accounts.google.com/o/oauth2/auth",
//   "token_uri": "https://oauth2.googleapis.com/token",
//   "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
//   "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/legal-minds%40legal-minds-399202.iam.gserviceaccount.com",
//   "universe_domain": "googleapis.com"
// }
//
// ''';
//
// const _spreadsheetId = '1eZXJFORqNnbBmUpc3mP7IMTA3dt5WaEB6BGiZZdJ_GU';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Google Sheets Integration',
//       home: CertificatePage(),
//     );
//   }
// }
//
// class CertificatePage extends StatefulWidget {
//   @override
//   _CertificatePageState createState() => _CertificatePageState();
// }
//
// class _CertificatePageState extends State<CertificatePage> {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController nameController = TextEditingController();
//
//   Future<void> insertDataToGoogleSheets(String email, String name) async {
//     final gsheets = GSheets(_credentials);
//     final ss = await gsheets.spreadsheet(_spreadsheetId);
//     var sheet = ss.worksheetByTitle('example');
//
//     // Create worksheet if it does not exist yet
//     sheet ??= await ss.addWorksheet('example');
//
//     final currentDate = DateTime.now().toLocal().toString();
//     final rowData = [email, name, currentDate];
//
//     // Insert the data into the first column of the worksheet
//     await sheet.values.insertValue(rowData, column: 1);
//
//     print('Data inserted successfully!');
//   }
//
//   void certificate() {
//     final email = emailController.text.trim();
//     final name = nameController.text.trim();
//
//     if (email.isNotEmpty && name.isNotEmpty) {
//       insertDataToGoogleSheets(email, name);
//       showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//           title: Text('Data Submitted'),
//           content: Text('Your data has been submitted successfully.'),
//           actions: [
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: Text('OK'),
//             ),
//           ],
//         ),
//       );
//     } else {
//       print('Email and name cannot be empty.');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Sheets Integration'),
//       ),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               TextField(
//                 controller: emailController,
//                 decoration: InputDecoration(labelText: 'Enter Your Email'),
//               ),
//               TextField(
//                 controller: nameController,
//                 decoration: InputDecoration(labelText: 'Enter Your Name'),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: certificate,
//                 child: Text('Submit to Google Sheets'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     emailController.dispose();
//     nameController.dispose();
//     super.dispose();
//   }
// }