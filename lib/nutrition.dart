import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Nutrition extends StatefulWidget {
  @override
  _NutritionState createState() => _NutritionState();
}

class _NutritionState extends State<Nutrition> {
  final TextEditingController _searchController = TextEditingController();
  String _apiUrl =
      'https://api.edamam.com/api/food-database/parser?app_id=b121f9b0&app_key=571a65bed82fb6f3f0dd6a4ddbc47723&ingr=';

  Map<String, dynamic> _foodData = {};

  Future<void> _searchFood(String query) async {
    final response = await http.get(Uri.parse(_apiUrl + Uri.encodeComponent(query)));

    if (response.statusCode == 200) {
      setState(() {
        _foodData = json.decode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
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
              controller: _searchController,
              decoration: InputDecoration(labelText: 'Enter a food item'),
              onSubmitted: (value) {
                _searchFood(value);
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _searchFood(_searchController.text);
              },
              child: Text('Search'),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: _foodData.isNotEmpty
                  ? SingleChildScrollView(
                    child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                    Text('Food Details:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8.0),
                    Text('Name: ${_foodData['text']}'),
                    SizedBox(height: 8.0),
                    Text('Category: ${_foodData['parsed'][0]['food']['category']}'),
                    SizedBox(height: 8.0),
                    Text('Image:'),
                    Image.network(_foodData['parsed'][0]['food']['image']),
                    SizedBox(height: 16.0),
                    Text('Nutrients:', style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
                    SizedBox(height: 8.0),
                    Text('Calories: ${_foodData['parsed'][0]['food']['nutrients']['ENERC_KCAL']}'),
                    Text('Protein: ${_foodData['parsed'][0]['food']['nutrients']['PROCNT']}'),
                    Text('Fat: ${_foodData['parsed'][0]['food']['nutrients']['FAT']}'),
                    Text('Carbohydrates: ${_foodData['parsed'][0]['food']['nutrients']['CHOCDF']}'),
                    Text('Fiber: ${_foodData['parsed'][0]['food']['nutrients']['FIBTG']}'),
                                    ],
                                  ),
                  )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Nutrition(),
  ));
}
