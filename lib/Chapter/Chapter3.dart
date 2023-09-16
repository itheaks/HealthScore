import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter3 extends StatefulWidget {
  @override
  _Chapter3State createState() => _Chapter3State();
}

class _Chapter3State extends State<Chapter3> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Ftm.mp4?alt=media&token=8dd09d0e-8fd5-4607-9e7f-9e0f9a5b2bab',
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
        title: Text('Chapter 3: Tradmarks'),
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
                  //  ),

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
                    'Chapter 3 Trademarks',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: A Trademark (or Trade Mark) is a unique symbol that is capable of identifying as well as differentiating products or services of one organization from those of others. The word \'Mark‘ stands for a sign, design, phrase, slogan, symbol, name, numeral, devise or a combination of these. Essentially, the Trademark is anything that identifies a brand to a common consumer.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility Criteria: Distinctiveness - it should be unique and should not be having similarities to the existing marks. Descriptiveness - Trademark should not be describing the description of the concerned goods or services. However, descriptive words may be registered if they acquire "secondary meaning", such as the brand name \'Apple‘ of a company manufacturing electronic gadgets.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts & Laws: In India, Trademarks are governed under The Trademarks Act, 1999 and ruled under Trademarks Rules, 2002.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: The administration of matters pertaining to Trademarks is carried out by the Office of CGPDTM, GoI under DPIIT.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: Following rights are conferred to a Trademark holder: Right to exclusive use; Right to seek statutory remedy against an infringement; Right of registered trademark holder of the identical trademark; Right to assign; and Right to alter registered trademark.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: In India, a registered Trademark is valid for 10 years. The period can be extended every 10 years, perpetually.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'What cannot be registered as Trademarks: The marks which cannot distinguish the goods or services of one person from that of another cannot be registered; Descriptive trademarks cannot be registered; hurt religious sentiments, are obscene cannot be registered; Well-known Trademark cannot be registered even if the goods are not similar.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: The Madrid Agreement for International Registration of Marks (1891); Nice Agreement for International Classification of Goods and Services (1957); the Trademark Law Treaty (TLT) (1994); Vienna Agreement (1973) for the Classification of Figurative Marks.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Designation of Trademark Symbols',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '™ Represents that the Trademark is unregistered. This mark can be used for promoting the goods of the company.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '℠ Represents that the Trademark is unregistered. This mark can be used for promoting brand services.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '® Represents a registered Trademark/Service. The applicant of the registered Trademark is its legal owner.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Classification of Trademarks: Goods and Services under Trademarks are classified as per the \'Nice Agreement‘ (1957) administered by WIPO.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Registration of a Trademark is Not Compulsory: However, registration provides certain advantages to the proprietor of the Trademark. In case of legal suits, a registered Trademark can serve as potent evidence of the lawful proprietorship of the Trademark. No legal course of action can be taken against the unlawful use of an unregistered Trademark.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Types of Trademark Registered in India: Distinctive General Word (\'Apple‘, an IT company); Distinctive Personal Names (\'Ford‘, an Automotive company); Picture (Alligator, a textile company); Number (\'4711‘, a perfume company); Slogan (\'Drink it to believe it‘, a cold drink company). Sound or smell is registrable as a mark, as long as it is distinct and can be reproduced graphically.',
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
