import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Hackathon extends StatefulWidget {
  @override
  _HackathonState createState() => _HackathonState();
}

class _HackathonState extends State<Hackathon> {
  late Dio _dio;
  late String _bearerToken;
  List<Map<String, dynamic>> _departments = [];

  @override
  void initState() {
    super.initState();
    _dio = Dio();
    _fetchData(); // Initial fetch data when the widget is created
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hackathon Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _fetchData();
              },
              child: Text('Get Department'),
            ),
            SizedBox(height: 20),
            _departments.isNotEmpty
                ? Expanded(
              child: ListView.builder(
                itemCount: _departments.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_departments[index]['deptName']),
                    subtitle:
                    Text(_departments[index]['deptId'].toString()),
                  );
                },
              ),
            )
                : Container(),
          ],
        ),
      ),
    );
  }

  Future<String> _getBearerToken() async {
    try {
      Response response = await _dio.post(
        'https://hackathon.hsdevonline.com/HSLogin/oauth/token',
        data: {
          'grant_type': 'password',
          'username': '7827191427',
          'password': '0000',
          'hospCode': 'CSOFTSUPPORT',
          'client_secret':
          '\$2a\$10\$iNssdGZSSfsmS9lzireKNelKNKDNQ/octZGZ.qh9nGy1u7St2ChC2',
          'client_id': 'hackathon',
        },
        options: Options(contentType: Headers.formUrlEncodedContentType),
      );

      return response.data['access_token'];
    } catch (e) {
      throw Exception('Failed to get Bearer token');
    }
  }

  Future<List<Map<String, dynamic>>> _getDepartments(
      String bearerToken) async {
    try {
      Response response = await _dio.get(
        'https://hackathon.hsdevonline.com/HS/api/departments',
        options: Options(
          contentType: Headers.jsonContentType,
          headers: {'Authorization': 'Bearer $bearerToken'},
        ),
      );

      return List<Map<String, dynamic>>.from(response.data);
    } catch (e) {
      throw Exception('Failed to get department information');
    }
  }

  void _fetchData() async {
    try {
      _bearerToken = await _getBearerToken();
      final departments = await _getDepartments(_bearerToken);

      setState(() {
        _departments = departments;
      });

      Fluttertoast.showToast(msg: 'Data fetched successfully');
    } catch (e) {
      Fluttertoast.showToast(
          msg: 'Error: $e', backgroundColor: Colors.red);
    }
  }
}

void main() {
  runApp(MaterialApp(
    home: Hackathon(),
  ));
}
