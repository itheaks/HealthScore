import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter8 extends StatefulWidget {
  @override
  _Chapter8State createState() => _Chapter8State();
}

class _Chapter8State extends State<Chapter8> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fsicld.mp4?alt=media&token=def08fcd-72cb-4e43-bd9c-4a624ae5d0d4',
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
        title: Text('Chapter 8: SICLD'),
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
                    'Chapter 8 Semiconductor Integrated Circuits Layout Design Registry'
                        '.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: \'Semiconductor Integrated Circuit\' is defined as the product having transistors or any circuitry elements, which are formed on a semiconductor/insulating material which is designed to perform an electronic circuitry function. \'Layout-Design\' means a layout if circuitry elements like transistors, resistors, capacitors, etc. and lead wires connecting all components have been articulated in a semiconductor integrated circuit.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility: The layout design should be original, there must be distinctiveness in the Design, it must be novel and capable of distinguishing from any other layout Design, and the Design must not be exploited commercially anywhere in India or a Convention Country.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts/Laws: Semiconductor Integrated Circuits Layout Design Act, 2000 and Semiconductor Integrated Circuits Layout Design Rules, 2001.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: In India, the administration of the SICLD is under the control of DPIIT, Ministry of Commerce and Industry, GoI.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: The owner of the SICLD has the exclusive right to reproduce by any means the registered layout design or any substantial portion of it.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: Ten years from the date of filing an application. If the design is already being used, the date of protection will be counted from the date of first commercial exploitation anywhere in India or in any country, whichever is earlier. If the creator is already using the design, he will get the ownership automatically.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions: Washington Treaty on Intellectual Property in respect of Integrated Circuits, 1989. India has signed this treaty, but it is not in force as of now. The international legal framework has kept it open to the member countries to protect such designs under the sui generis law.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts Not Considered as an Infringement: The acts like scientific evaluation, analysis, research or teaching, do not constitute an act of infringement. If a person, on the basis of scientific evaluation or analysis of a registered Layout-Design, creates another Layout- Design which is original within the meaning of Sub-section (2) of Section 7 of The Semiconductor Integrated Circuits Layout-Design Act, 2000, that person shall have the right to incorporate such another Layout-Design in a Semiconductor Integrated Circuit. Such incorporation or performance of any act shall not be regarded as infringement.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Although the first use of the layout design anywhere is sufficient to claim protection, the creator should register the design to avoid infringement.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Any person who contravenes and infringes a registered Layout- Design, as per the provision under the Act, will be punished with imprisonment for a term extendable to three years and imposition of a fine ranging from ₹ 50, 000 to 10,00,000, or with both.',
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
