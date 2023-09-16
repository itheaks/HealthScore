import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter6 extends StatefulWidget {
  @override
  _Chapter6State createState() => _Chapter6State();
}

class _Chapter6State extends State<Chapter6> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fts.mp4?alt=media&token=bc5ccad0-41de-44bf-bf51-4e8babdbd28b',
    )..initialize().then((_) {
      setState(() {});
    });
  }

  // Function to show the downloading dialog
  void _showDownloadingDialog() {
    showDialog(
      context: context,
      builder: (context) => const DownloadingDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chapter 6: Trade Secrets'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: Stack(
                children: [
                  _controller.value.isInitialized
                      ? AspectRatio(
                    aspectRatio: _controller.value.aspectRatio,
                    child: VideoPlayer(_controller),
                  )
                      : CircularProgressIndicator(),
                  // Positioned(
                  //   bottom: 8,
                  //   right: 8,
                  //   child: ElevatedButton(
                  //     onPressed: () async {
                  //       try {
                  //         const notesUrl =
                  //             'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Chapter1.pdf?alt=media&token=ff4946b6-b1dd-49a6-b963-38f35849dbac';
                  //         if (await canLaunch(notesUrl)) {
                  //           await launch(notesUrl);
                  //         } else {
                  //           throw 'Could not launch $notesUrl';
                  //         }
                  //       } catch (e) {
                  //         print('Error opening notes: $e');
                  //       }
                  //     },
                  //     child: Text('Open Notes'),
                  //   ),
                  //
                  // ),
                  Positioned(
                    top: 8,
                    right: 8,
                    child: FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          if (_controller.value.isPlaying) {
                            _controller.pause();
                          } else {
                            _controller.play();
                          }
                        });
                      },
                      child: Icon(
                        _controller.value.isPlaying
                            ? Icons.pause
                            : Icons.play_arrow,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Chapter 6 Trade Secrets',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: Trade Secret deals with a practice or a process of a company that is generally not known outside the company. The confidential secret provides the company with a commercial advantage over its rivals and is often a product of internal R&D. Trade Secret document comprises of \'technical information\' involving manufacturing processes, experimental research data, formulas, recipes, software algorithms, and \'commercial information\' comprising of marketing strategies and a list of product/process recipients. The document may also have a combination of elements, each of which by itself is in the public domain, but where the combination, which is kept secret, provides a competitive advantage.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility: For a product/process to qualify as a Trade Secret, the information should be of commercial value, should not be in the public domain, and known to a limited group of people. The legal owner/s of the secret must ensure taking reasonable steps to keep the secret information and agreements (if any) confidential.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts/Laws: In India, there is no specific legislation regarding Trade Secrets. However, these are governed under Section 27 of ‘The Indian Contract Act, 1872.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: This aspect of IP is governed under the Indian Contract Act and administered by the Ministry of Law and Justice.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: The owner of the Trade Secret has the legal right to use the secret for economic gains and can sell the secret to anybody for any length of time.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: Contrary to the other forms of IP, a Trade Secret protection has no time period. Many Trade Secrets are more than 100 years old. In addition, there is no formal registration procedure/form to be followed/filled for maintaining a Trade Secret. In simple terms, Trade Secrets are protected without registration. Also, there is no annual renewal fee for keeping the Trade Secret a secret.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Exceptions: A trade secret owner cannot stop others from using the same technical or commercial information if anyone develops such information independently by himself through the reverse engineering or marketing analysis or the owner himself declares it publically.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Non-Trade Secret Items: The items having toxic substances cannot be protected under trade secrets.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Enforcement: If somebody acquires the secret through illegal means or indulge in dishonest use of a Trade Secret acquired through legal agreement, the rightful owner can approach the court to seek an injunction and/or claim financial damage accrued as a result of dishonest commercial practice. If a person/company independently develops a process/technology/product which is already a Trade Secret, it is not considered a violation of Trade Secret protection. The newly developed process/technology can also claim Trade Secret rights.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: Paris Convention, 1883 for the Protection of Industrial Property and TRIPS Agreement, 1995 deal partly with the protection of Trade Secret.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Trade Secrets are not subject to being ―infringed,‖ as with Patents and Copyrights, but are subject to theft.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Renowned Trade Secrets: Coca-Cola, Google Algorithm, Kentucky Fried Chicken, Dr. Pepper (non-alcoholic, fizzy drink), Listerine (for treatment of allergies, pimples, psoriasis, and insect bites), Lena Blackburne\'s Baseball Rubbing Mud(for roughing the surface of base-ball) and McDonald‘s Big Mac Special Sauce Recipe.',
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon: Icon(Icons.fullscreen),
              onPressed: () {
                _enterFullScreen(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  void _enterFullScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.of(context).pop();
              _controller.pause();
            },
            child: Icon(Icons.fullscreen_exit),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
