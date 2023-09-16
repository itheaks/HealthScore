import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

const _detailCredentials = r'''
{
  "type": "service_account",
  "project_id": "legal-minds-399202",
  "private_key_id": "b29027fdf4c2e875c4d1d2d876270727c33a51ed",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQDBcehU4vtLwKc5\nZw30DF/gmfUfU4xVfhMYJD69ykN0Emk8cSAQJIKi7ETGLNDljRU9t1wK0zhU13L/\nhucpZwuIkepIjahp8RJhRKWMekdjlRAoL32V4S0mZNe8ks8zsQLYqNa9XlHtwq6h\nVEwEH288l7/cWMHhMlyCHeymm3r/dV2bnvr8/jpRZ03DrsS2cMbq+liL/rsLhCkj\nR3RgoSObSKA6DERYKjTmhvv2HtekOx8LeqPkVlZIdYyss2hR8LeQ6Xb6Me8RudLD\nolPA2J0ARHblLujdVsxMgQUJu5aAiBVVuLYjapL1lcK00RwG8uFzhwonl7Aigv6u\nI89ywAM5AgMBAAECggEAEp4nabAU1oQatBQejCv6uE+o/1RXr8y8ArlOTo7echfp\nh/ctSlBxQEP0FIywqD8tWazBj4sno0a/Gye9LMdtnT3J6iS0Hkok5jaopj4Ii+WH\nUg7MC/ZJlaXj+5K3nXZ+WyLY1A31Xag8jWtjC4yI9LB4NzlVo5pou98sbRaOvnI+\n3TRsbpAgKsCKFxt7tQ58rJ9SCX4z/i4V45wM6YB1no1JIqEmKIFNMk3heJymrbPX\n2tZqpHw4OTtF18Ot1FwFadUNt2U1DjPacb7EzMeB714uWt9Ico3Zlg/WJihRk7Kz\n+00PCX+MVXAsjft0wbAr+GdDvPXyOOnteo8ztlzJ/wKBgQDtP4sTHAYZpN1BjmCT\nolERWcR27csssMqDh2Q/jgZmYxNKJqwq6osz7vG5qLpH1Vh/ZePRnxsdRzWgaDP7\n/N/QrQeL5qEzpkgef2C38tEI6JAZqZmDaZkG9WJsyZjagHblSQQP8PLDLCLGld+x\ndlq7Iw8mHJNYW9Ku3ji97N8VkwKBgQDQvA2rkVDSAHbGg9uaW8/tScc8W12lG6FP\n+8vOqgC1Q531/Yc7whqPvxqIws4OCdYe4OU8SWBz0R035jGimFL3QKT+7OOxcGZA\ntmrxuYVZAOkTv6Bh3eddzrYI+uVwaDN0rnEPDOGgtP5CEMciuH5ufpsS2bzCzwXu\n/k0nvdPDgwKBgF4mkXKL9H/IxWV2syzjhXh1P1pTFAYwQq3f1RDDtBZ9yvHqVvjR\nC10YviUHqKVJLU2hib9ufLwpvkZiE/80Yz3U7OHALMjqfEReGGvnmL0ITedhPuK/\nzVLNnrm9Z0OPJ5/mUg5heHWr1kEoyRUL+wW47BIb1P2DsyBiX/I/RmixAoGACRSV\nN6h7rpcMk7g6vm1OD1GNVEfZPAyGqPcYN6ZXn4sQfRoJXwUjqKs0mUx4ME4nPXKl\nJkk+4+rt7XebIyqjOVRbmSdvBFIScLA+2MMsVOHgQdatQHSp0v/iFWPsxUYTLvlD\nu9bgneAhy3f1YcJK5b2mO1yzhHoDFRGFA7yTUMcCgYEAsQ95vab06NFKHUarC9JW\nAu7SUWKi6Ruc0PpmvGJRHeQcJKZMoA6dvz/m7zQ44qSI7FoZ8qsVRr+rRIP9DyD5\n/ymtwZbEYB0g3h0OqLruSIe9r3znd4pb08OXq1erRJp7J5IK3LGrsHglNH9d+dhY\nTzzpGT17u8xnHGHQ2L2J/I0=\n-----END PRIVATE KEY-----\n",
  "client_email": "legal-minds@legal-minds-399202.iam.gserviceaccount.com",
  "client_id": "105623776348133290992",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/legal-minds%40legal-minds-399202.iam.gserviceaccount.com",
  "universe_domain": "googleapis.com"
}
''';

const _detailSpreadsheetId = '1eZXJFORqNnbBmUpc3mP7IMTA3dt5WaEB6BGiZZdJ_GU';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail App',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: DetailSection(),
    );
  }
}

class DetailSection extends StatefulWidget {
  @override
  _DetailSectionState createState() => _DetailSectionState();
}

class _DetailSectionState extends State<DetailSection> {
  final GSheets _gsheets = GSheets(_detailCredentials);
  Worksheet? _detailSheet;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  bool _isSuccessful = false;
  List<List<String>> _detailData = [];

  @override
  void initState() {
    super.initState();
    _loadDetailSheet();
  }

  Future<void> _loadDetailSheet() async {
    final ss = await _gsheets.spreadsheet(_detailSpreadsheetId);
    _detailSheet = ss.worksheetByTitle('Sheet1');
    await _refreshDetailData();
  }

  Future<void> _refreshDetailData() async {
    if (_detailSheet == null) {
      return;
    }

    final values = await _detailSheet!.values.allRows();
    setState(() {
      _detailData = values;
    });
  }

  Future<void> _createDetail() async {
    if (_detailSheet == null) {
      return;
    }

    final now = DateTime.now();

    final rowData = [
      _emailController.text,
      _nameController.text,
      _dateController.text,
      _isSuccessful ? 'Yes' : 'No',
    ];

    await _detailSheet!.values.appendRow(rowData);
    _clearControllers();
    await _refreshDetailData();
  }

  Future<void> _updateDetail(String date) async {
    if (_detailSheet == null) {
      return;
    }

    final updatedRowData = [
      _emailController.text,
      _nameController.text,
      _dateController.text,
      _isSuccessful ? 'Yes' : 'No',
    ];

    final rowIndex = _detailData.indexWhere((rowData) => rowData[0] == date);

    if (rowIndex != -1) {
      _detailData[rowIndex] = updatedRowData;

      await _detailSheet!.values.insertRow(rowIndex + 2, updatedRowData);

      _clearControllers();
      await _refreshDetailData();
    }
  }

  Future<void> _deleteDetail(String date) async {
    if (_detailSheet == null) {
      return;
    }

    _detailData.removeWhere((rowData) => rowData[0] == date);

    await _detailSheet!.clear();
    await _detailSheet!.values.appendRow(['Email', 'Name', 'Date', 'I Enjoyed the Application']);
    for (final rowData in _detailData) {
      await _detailSheet!.values.appendRow(rowData);
    }

    _clearControllers();
    await _refreshDetailData();
  }

  void _clearControllers() {
    _emailController.clear();
    _nameController.clear();
    _dateController.clear();
    setState(() {
      _isSuccessful = false;
    });
  }

  void _openExcelSheet() async {
    const excelURL = 'https://docs.google.com/spreadsheets/d/1e7L3fbD22fvgt8occb9sjXuXx5aV8Yxlc88tlPyMrfA/edit?usp=sharing';
    try {
      if (await canLaunch(excelURL)) {
        await launch(excelURL);
      } else {
        throw 'Could not launch $excelURL';
      }
    } catch (e) {
      print('Error opening Excel sheet: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Detail Tracker')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40.0),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Add a shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Match the container's border radius
                    child: Image.asset(
                      'assets/logo.png',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: _nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                controller: _dateController,
                decoration: InputDecoration(labelText: 'Date'),
              ),
              Row(
                children: [
                  Text('I Enjoyed the Application: '),
                  Checkbox(
                    value: _isSuccessful,
                    onChanged: (value) {
                      setState(() {
                        _isSuccessful = value ?? false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  if (_emailController.text.isEmpty) {
                    return;
                  }
                  _createDetail();
                },
                child: Center(child: Text('Submit')),
              ),
              SizedBox(height: 16.0),
              Text(
                'You will get your Certificate Soon!! on the registered email ID',
                style: TextStyle(fontSize: 20,
                    //fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 16.0),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Sample Certificate',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0), // Add rounded corners
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3), // Add a shadow
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0), // Match the container's border radius
                    child: Image.asset(
                      'assets/img.jpg',
                      width: 300,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
