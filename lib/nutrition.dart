import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Color(0xffb8d695),
      scaffoldBackgroundColor: Color(0xffc9dca0),
    ),
    home: Nutrition(),
  ));
}

class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  final TextEditingController _foodSearchController = TextEditingController();
  String _apiUrl =
      'https://api.edamam.com/api/food-database/parser?app_id=b121f9b0&app_key=571a65bed82fb6f3f0dd6a4ddbc47723&ingr=';

  List<dynamic> _foodItems = [];
  List<dynamic> _cartItems = [];

  Future<void> _searchFood(String query) async {
    final response = await http.get(Uri.parse(_apiUrl + Uri.encodeComponent(query)));

    if (response.statusCode == 200) {
      setState(() {
        _foodItems = json.decode(response.body)['parsed'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  void _addToCart(dynamic foodItem) {
    setState(() {
      _cartItems.add({'food': foodItem});
    });
  }

  void _removeFromCart(int index) {
    setState(() {
      _cartItems.removeAt(index);
    });
  }

  void _calculateTotalConsumption() {
    double totalCalories = 0.0;
    double totalProtein = 0.0;
    double totalFat = 0.0;
    double totalCarbs = 0.0;
    double totalFiber = 0.0;

    for (var item in _cartItems) {
      var foodItem = item['food'];
      totalCalories += (foodItem['nutrients']['ENERC_KCAL'] ?? 0.0);
      totalProtein += (foodItem['nutrients']['PROCNT'] ?? 0.0);
      totalFat += (foodItem['nutrients']['FAT'] ?? 0.0);
      totalCarbs += (foodItem['nutrients']['CHOCDF'] ?? 0.0);
      totalFiber += (foodItem['nutrients']['FIBTG'] ?? 0.0);
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Total Consumption'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Total Calories: $totalCalories kcal'),
              Text('Total Protein: $totalProtein g'),
              Text('Total Fat: $totalFat g'),
              Text('Total Carbohydrates: $totalCarbs g'),
              Text('Total Fiber: $totalFiber g'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _displayCartItems() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Diet Items'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _cartItems.map<Widget>((cartItem) {
              var foodItem = cartItem['food'];
              return ListTile(
                title: Text(foodItem['label']),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Category: ${foodItem['category']}'),
                    Text('Calories: ${foodItem['nutrients']['ENERC_KCAL']} kcal'),
                    Text('Protein: ${foodItem['nutrients']['PROCNT']} g'),
                    Text('Fat: ${foodItem['nutrients']['FAT']} g'),
                    Text('Carbohydrates: ${foodItem['nutrients']['CHOCDF']} g'),
                    Text('Fiber: ${foodItem['nutrients']['FIBTG']} g'),
                  ],
                ),
                trailing: ElevatedButton(
                  onPressed: () {
                    _removeFromCart(_cartItems.indexOf(cartItem));
                  },
                  style: ElevatedButton.styleFrom(primary: Colors.green),
                  child: Text('Remove'),
                ),
              );
            }).toList(),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrition App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _foodSearchController,
              decoration: InputDecoration(labelText: 'Enter a food item'),
              onSubmitted: (value) {
                _searchFood(value);
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _searchFood(_foodSearchController.text);
              },
              style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
              child: Text('Search'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: _foodItems.isNotEmpty
                  ? ListView.builder(
                itemCount: _foodItems.length,
                itemBuilder: (context, index) {
                  var foodItem = _foodItems[index]['food'];

                  return Card(
                    elevation: 5.0,
                    shadowColor: Colors.black,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    color: Color(0xfffceec1),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Food Details:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8.0),
                            Text('Name: ${foodItem['label']}'),
                            SizedBox(height: 8.0),
                            Text('Category: ${foodItem['category']}'),
                            SizedBox(height: 8.0),
                            Text('Image:'),
                            Image.network(foodItem['image']),
                            SizedBox(height: 16.0),
                            Text('Nutrients:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                            SizedBox(height: 8.0),
                            Text('Calories: ${foodItem['nutrients']['ENERC_KCAL']}'),
                            Text('Protein: ${foodItem['nutrients']['PROCNT']}'),
                            Text('Fat: ${foodItem['nutrients']['FAT']}'),
                            Text('Carbohydrates: ${foodItem['nutrients']['CHOCDF']}'),
                            Text('Fiber: ${foodItem['nutrients']['FIBTG']}'),
                            SizedBox(height: 16.0),
                            ElevatedButton(
                              onPressed: () {
                                _addToCart(foodItem);
                              },
                              style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
                              child: Text('Add to Diet'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )
                  : Container(),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: _cartItems.isNotEmpty ? _displayCartItems : null,
                  style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
                  child: Text('Show Diet Items'),
                ),
                ElevatedButton(
                  onPressed: _cartItems.isNotEmpty ? _calculateTotalConsumption : null,
                  style: ElevatedButton.styleFrom(primary: Color(0xffb8d695)),
                  child: Text('Total Consumption'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
