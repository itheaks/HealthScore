import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Hackathon extends StatefulWidget {
  @override
  _HackathonState createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {
  List<Map<String, dynamic>> departments = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final url = 'https://hackathon.hsdevonline.com/HS/mobile/V2/getUserDepartment';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      setState(() {
        departments = List<Map<String, dynamic>>.from(data);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hackathon App'),
        ),
        body: Center(
          child: departments.isEmpty
              ? CircularProgressIndicator()
              : ListView.builder(
            itemCount: departments.length,
            itemBuilder: (context, index) {
              final department = departments[index];
              return ListTile(
                title: Text(department['deptName']),
                subtitle: Text('Dept ID: ${department['deptId']}'),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(Hackathon());
}
