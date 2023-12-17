import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class TdeeData {
  int age;
  String gender;
  double height;
  double weight;
  double activityHours;
  double dailyCalories;
  double bmi;

  TdeeData({
    required this.age,
    required this.gender,
    required this.height,
    required this.weight,
    required this.activityHours,
    required this.dailyCalories,
    required this.bmi,
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => TdeePage()),
            );
          },
          child: Text('Go to TDEE Page'),
        ),
      ),
    );
  }
}

class TdeePage extends StatefulWidget {
  @override
  _TdeePageState createState() => _TdeePageState();
}

class _TdeePageState extends State<TdeePage> {
  List<TdeeData> _dataList = [];

  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController activityController = TextEditingController();

  void _showInputBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Enter Data'),
        content: Column(
          children: [
            TextField(
              controller: ageController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            TextField(
              controller: genderController,
              decoration: InputDecoration(labelText: 'Gender'),
            ),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextField(
              controller: activityController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Activity Hours'),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              _calculateTdee();
              Navigator.pop(context);
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  void _calculateTdee() {
    int age = int.parse(ageController.text);
    String gender = genderController.text;
    double height = double.parse(heightController.text);
    double weight = double.parse(weightController.text);
    double activityHours = double.parse(activityController.text);

    double bmr;

    if (gender.toLowerCase() == 'male') {
      bmr = 10 * weight + 6.25 * height - 5 * age + 5;
    } else {
      bmr = 10 * weight + 6.25 * height - 5 * age - 161;
    }

    double dailyCalories = bmr * activityHours;

    double bmi = weight / ((height / 100) * (height / 100));

    TdeeData data = TdeeData(
      age: age,
      gender: gender,
      height: height,
      weight: weight,
      activityHours: activityHours,
      dailyCalories: dailyCalories,
      bmi: bmi,
    );

    setState(() {
      _dataList.add(data);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TDEE Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _dataList.length,
              itemBuilder: (context, index) {
                TdeeData data = _dataList[index];
                return ListTile(
                  title: Text('Calories: ${data.dailyCalories.toStringAsFixed(2)} | BMI: ${data.bmi.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _showInputBox();
              },
              child: Text('Add Data'),
            ),
          ),
        ],
      ),
    );
  }
}
