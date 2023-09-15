import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter1 extends StatefulWidget {
  @override
  _Chapter1State createState() => _Chapter1State();
}

class _Chapter1State extends State<Chapter1> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fpatents.mp4?alt=media&token=8e987135-84eb-43f9-8222-b40af2c5b0da',
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
        title: Text('Chapter 1: Patents'),
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
                  Positioned(
                    bottom: 8,
                    right: 8,
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          const notesUrl =
                              'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Chapter1.pdf?alt=media&token=ff4946b6-b1dd-49a6-b963-38f35849dbac';
                          if (await canLaunch(notesUrl)) {
                            await launch(notesUrl);
                          } else {
                            throw 'Could not launch $notesUrl';
                          }
                        } catch (e) {
                          print('Error opening notes: $e');
                        }
                      },
                      child: Text('Open Notes'),
                    ),

                  ),
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
                    'Chapter 1 Patents',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: A patent is an exclusive right granted for an innovation that provides a new way of doing something or offers a new technical solution to a problem.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility Criteria: To qualify for a patent, an invention must be novel (not in the public domain), non-obvious to skilled individuals in the field, and of industrial use.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts & Laws: In India, patents are regulated by the Patent Act of 1970.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: The administration of matters pertaining to patents is carried out by the Office of CGPDTM, under DPIIT, Ministry of Commerce and Industry, GoI.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Right: A patent owner has the right to decide who may or may not use the patented invention.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: Patent Rights are protected for a period of 20 years. In return, the process of the invention must be disclosed in the public domain.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Exceptions: As per Section 47 of the Act, a patent may be used by any person for teaching and research purposes. It will not be considered an infringement.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Items that cannot be patented: According to The Patent Act, 1970, the following items fall under the category of no-patentability criteria: a discovery, scientific theory or mathematical method; a computer program; a presentation of information; a procedure for surgical or therapeutic treatment, or diagnosis, to be practiced on humans or animals; Software and business methods; Medical methods; Perpetual motion machines; Inventions which are contrary to Law or Morality or injurious to public health; and Mere arrangement or re-arrangement of known devices.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: To ensure and regulate the hassle-free exchange of IPR related activities amongst all the nations, the United Nations (UN) has created an organization called the World Intellectual Property Organization (WIPO) in Geneva. This agency is at the forefront of imparting knowledge about IP and governs international filing and registration of IP through various Conventions and Treaties like Paris Conventions, Patent Cooperation Treaty (PCT), Budapest Treaty, Strasbourg Agreement Concerning the International Patent Classification, Patent Law Treaty, etc.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information: - Patents are awarded not only for major scientific breakthroughs but also for minor improvements over existing inventions. - Avoid public disclosure of an invention before patenting: Generally, an invention that has been either published or publicly displayed cannot be patented, as the claimed invention will lose the \'Novelty\' criterion. - In our daily life, we use many patented items, such as toothbrush, toothpaste, shoes, pen, eyeglasses, textiles, mobile phones, wristwatch, bicycle, scooter, car, television, cold drinks, beverages, and many more. - A single product may contain several inventions (patents) e.g. the laptop computer, car, and mobile phone contain scores of inventions, working together. - \'Prior Art Search\' (information lying in the public domain before the filing of the patent application) is a critical step prior to the filing of the Patent application. - There is no such term as \'Universal Patent\' or \'World Patent\' or \'International Patent\' as the patent rights are territorial. An application for a patent must be filed with a \'Patent Office\' of the country in which one wishes to seek patent protection. - If one wishes to seek patent protection in several countries worldwide, it is preferred to file an international patent under the Patent Cooperation Treaty (PCT). - In general, Indian residents are required to file the patent application first in India.',
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
