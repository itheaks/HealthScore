import 'package:flutter/material.dart';

enum Gender { male, female }

enum ActivityLevel { level1, level2, level3, level4, level5, level6 }

class TdeeData {
  final int age;
  final Gender gender;
  final double height;
  final double weight;
  final ActivityLevel activityLevel;
  double dailyCalories;
  double bmi;
  Map<String, double> macronutrients;

  TdeeData({
    required String age,
    required Gender gender,
    required String height,
    required String weight,
    required ActivityLevel activityLevel,
  })  : age = int.tryParse(age) ?? 0,
        gender = gender,
        height = double.tryParse(height) ?? 0.0,
        weight = double.tryParse(weight) ?? 0.0,
        activityLevel = activityLevel,
        dailyCalories = 0.0,
        bmi = 0.0,
        macronutrients = {} {
    if (this.age <= 0 || this.height <= 0.0 || this.weight <= 0.0) {
      throw ArgumentError('Invalid input values. Age, height, and weight must be greater than 0.');
    }

    calculateTdee();
    calculateBMI();
    calculateMacronutrients();
  }

  void calculateTdee() {
    double bmr;
    if (gender == Gender.male) {
      bmr = 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
    } else if (gender == Gender.female) {
      bmr = 447.593 + (9.247 * weight) + (3.098 * height) - (4.330 * age);
    } else {
      throw ArgumentError('Invalid gender input. Please specify "male" or "female".');
    }

    double activityMultiplier;
    switch (activityLevel) {
      case ActivityLevel.level1:
        activityMultiplier = 1.2;
        break;
      case ActivityLevel.level2:
        activityMultiplier = 1.375;
        break;
      case ActivityLevel.level3:
        activityMultiplier = 1.55;
        break;
      case ActivityLevel.level4:
        activityMultiplier = 1.725;
        break;
      case ActivityLevel.level5:
        activityMultiplier = 1.9;
        break;
      case ActivityLevel.level6:
        activityMultiplier = 2.0;
        break;
      default:
        throw ArgumentError('Invalid activity level input.');
    }

    dailyCalories = bmr * activityMultiplier;
  }

  void calculateBMI() {
    bmi = weight / ((height / 100) * (height / 100));
  }

  void calculateMacronutrients() {
    const double proteinPercentage = 0.30;
    const double fatPercentage = 0.30;
    const double carbohydratePercentage = 0.40;

    const double caloriesPerGramProtein = 4.0;
    const double caloriesPerGramFat = 9.0;
    const double caloriesPerGramCarbohydrate = 4.0;

    double proteinInGrams = (proteinPercentage * dailyCalories) / caloriesPerGramProtein;
    double fatInGrams = (fatPercentage * dailyCalories) / caloriesPerGramFat;
    double carbohydratesInGrams =
        (carbohydratePercentage * dailyCalories) / caloriesPerGramCarbohydrate;

    macronutrients = {
      'protein': proteinInGrams,
      'fat': fatInGrams,
      'carbohydrates': carbohydratesInGrams,
    };
  }
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

Map<String, double> calculateMacronutrients(double calories) {
  const double proteinPercentage = 0.30;
  const double fatPercentage = 0.30;
  const double carbohydratePercentage = 0.40;

  const double caloriesPerGramProtein = 4.0;
  const double caloriesPerGramFat = 9.0;
  const double caloriesPerGramCarbohydrate = 4.0;

  double proteinInGrams = (proteinPercentage * calories) / caloriesPerGramProtein;
  double fatInGrams = (fatPercentage * calories) / caloriesPerGramFat;
  double carbohydratesInGrams = (carbohydratePercentage * calories) / caloriesPerGramCarbohydrate;

  return {
    'protein': proteinInGrams,
    'fat': fatInGrams,
    'carbohydrates': carbohydratesInGrams,
  };
}

class _TdeePageState extends State<TdeePage> {
  List<TdeeData> _dataList = [];

  TextEditingController ageController = TextEditingController();
  Gender? selectedGender;
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  ActivityLevel? selectedActivityLevel;

  void _showInputBox() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Enter Data'),
        content: Container(
          width: double.maxFinite,
          child: ListView(
            shrinkWrap: true,
            children: [
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Age'),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Gender'),
                  ),
                  Expanded(
                    flex: 3,
                    child: DropdownButton<Gender>(
                      value: selectedGender,
                      onChanged: (Gender? newValue) {
                        setState(() {
                          selectedGender = newValue;
                        });
                      },
                      items: <Gender>[Gender.male, Gender.female]
                          .map<DropdownMenuItem<Gender>>((Gender value) {
                        return DropdownMenuItem<Gender>(
                          value: value,
                          child: Text(value.toString().split('.').last),
                        );
                      }).toList(),
                    ),
                  ),
                ],
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
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text('Activity Level'),
                  ),
                  Expanded(
                    flex: 3,
                    child: DropdownButton<ActivityLevel>(
                      value: selectedActivityLevel,
                      onChanged: (ActivityLevel? newValue) {
                        setState(() {
                          selectedActivityLevel = newValue;
                        });
                      },
                      items: <ActivityLevel>[
                        ActivityLevel.level1,
                        ActivityLevel.level2,
                        ActivityLevel.level3,
                        ActivityLevel.level4,
                        ActivityLevel.level5,
                        ActivityLevel.level6,
                      ].map<DropdownMenuItem<ActivityLevel>>((ActivityLevel value) {
                        return DropdownMenuItem<ActivityLevel>(
                          value: value,
                          child: Text(value.toString().split('.').last),
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ],
          ),
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
              try {
                TdeeData data = TdeeData(
                  age: ageController.text,
                  gender: selectedGender!,
                  height: heightController.text,
                  weight: weightController.text,
                  activityLevel: selectedActivityLevel!,
                );
                setState(() {
                  _dataList.add(data);
                });
                Navigator.pop(context);
              } catch (e) {
                print('Error: $e');
                // Handle invalid input values
              }
            },
            child: Text('Save'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
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
                  title: Text(
                      'Calories: ${data.dailyCalories.toStringAsFixed(2)} | BMI: ${data.bmi.toStringAsFixed(2)}'),
                  subtitle: Text(
                    'Protein: ${data.macronutrients['protein']?.toStringAsFixed(2) ?? 'N/A'}g | ' +
                        'Fat: ${data.macronutrients['fat']?.toStringAsFixed(2) ?? 'N/A'}g | ' +
                        'Carbohydrates: ${data.macronutrients['carbohydrates']?.toStringAsFixed(2) ?? 'N/A'}g',
                  ),
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

void main() {
  runApp(MyApp());
}

