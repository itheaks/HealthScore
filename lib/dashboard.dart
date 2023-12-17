// import 'package:flutter/material.dart';
//
// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Map<String, dynamic> args = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
//     double tdee = args['tdee'];
//     String bmiStatus = args['bmiStatus'];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               'Your TDEE is:',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               '$tdee calories',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'BMI Status:',
//               style: TextStyle(fontSize: 18),
//             ),
//             SizedBox(height: 10),
//             Text(
//               bmiStatus,
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: getBmiColor(bmiStatus)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Color getBmiColor(String bmiStatus) {
//     switch (bmiStatus) {
//       case 'Underweight':
//         return Colors.yellow;
//       case 'Healthy':
//         return Colors.green;
//       case 'Overweight':
//         return Colors.orange;
//       default:
//         return Colors.black;
//     }
//   }
// }
