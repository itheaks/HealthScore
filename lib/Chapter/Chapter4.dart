import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter4 extends StatefulWidget {
  @override
  _Chapter4State createState() => _Chapter4State();
}

class _Chapter4State extends State<Chapter4> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Find.mp4?alt=media&token=b6fb45f7-91a8-48ac-bb2a-5f85bc2352c5',
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
        title: Text('Chapter 4: Industrial Design'),
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
                    'Chapter 4 Industrial Design',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: The word \'Design‘ is defined as the features of shape, configuration, pattern, ornament or composition of lines or colours applied to any article. The main object of registration of industrial Designs is to protect and incentivize the original creativity of the originator and encourage others to work towards the art of creativity.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility Criteria: Design must be novel or original and should be significantly distinguishable from the already registered Designs existing in the public domain.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts and Laws: In India, Industrial Designs are governed under \'The Designs Act‘, 2000 and \'Design Rules‘, 2001 and have been amended from time to time.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: The administration of matters pertaining to Industrial Designs is carried out by the Office of CGPDTM, GoI under DPIIT.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: Registration of Design ensures the exclusive rights of the applicant on the Design. The Design registration confers a monopolistic right to the proprietor by which he can legally exclude others from reproducing, manufacturing, selling, or dealing in the said registered Design without his prior consent. The owner can prevent the registered Design products from piracy and imitation.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: The registered Designs are protected for 10 years in India and can be extended by 5 years after making a renewal application.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Items which cannot be registered as Industrial Design: Flags, emblems or signs of any country, and any Industrial Design which is against public moral values.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: Hague Agreement for international registration (1925); Locarno Agreement (1968) for international classification.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information: Designs are registered in different classes as per the Locarno Agreement, 1968.',
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
