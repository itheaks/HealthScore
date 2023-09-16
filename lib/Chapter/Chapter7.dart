import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter7 extends StatefulWidget {
  @override
  _Chapter7State createState() => _Chapter7State();
}

class _Chapter7State extends State<Chapter7> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Ftk.mp4?alt=media&token=1a8bc9d9-bc2f-468e-99b5-3987fc429526',
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
        title: Text('Chapter 7: Patents'),
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
                    'Chapter 7 Traditional Knowledge',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: Traditional Knowledge (TK) comprises know-how, knowledge, skills and practices that are traditionally originated and are passed from generation to generation in a community. TK is unique for a community and mark as a cultural identity of the community. Some of the practical examples of TK of India which have gained worldwide popularity are Ayurveda, Unani, Medicinal Formulations (including components, such as turmeric, neem, etc.).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Protection of TK: TK based on knowledge is not conventionally protected under IP systems. Most of the countries have developed a sui generis system for protecting TK that is inclined towards the dissemination and preservation of TK rather than legal protection associated with it. To protect the spiritual identity and essence of TK in the community/country, means of protection are not totally in tune with the current system of IP protection. TK protection is a way to recognize traditional sources of knowledge and to enable indigenous communities and governments to have a say in the use of such TKs by others.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Link between TK and TCE: TK is also linked to Traditional Cultural Expressions (TCEs), commonly known as \'Expressions of Folklore\'. It includes folklore expression in the form of music, dance, art, designs, signs and symbols, names, performances, architecture forms, ceremonies, narratives and handicrafts and any other form of artistic/cultural expressions. TK and TCE form a part of the heritage of the traditional and indigenous community. Some of the prominent TCEs of India include Bharatnatyam of Tamil Nadu, Kuchipudi of Andhara Pradesh, Kalaripayattu martial art of Kerala and many other traditional practices.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'TK and TCE represent the face of the community and its people. These people are given due credit and fair and equitable sharing of the benefits arising from the commercial exploitation of TK and TCE. The execution of the TK protection system led to the revocation of Patents filed in the US and other countries on the medicinal properties of turmeric, neem, amla, etc. which are very well documented in ancient Indian texts.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Agreement on TK: The major agreements that shaped the development of the sui generis system for the protection of TK include \'Convention on Biological Diversity (CBD), 1993\', \'Nagoya Protocol, 2010\', International treaty on \'Plant Genetic Resources for Food and Agriculture‘ of the Food and Agriculture Organization (FAO), 2001, \'International Union for the Protection of New Varieties of Plants (UPOV), 1991\'. Agreement on TRIPS through the \'Doha Declaration, 2001\' directed TRIPS to include a perspective on the protection of TK in alignment with CBD. \'WIPO‘s Intergovernmental Committee (IGC) on Intellectual Property and Genetic Resources, Traditional Knowledge and Folklore, 2000\' directed all member States to comply with the protection of TK.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Protection of TK: India is the only country to set up an institutional mechanism for the protection of TK. The TK documentation is undertaken by the Ministry of Science and Technology and Ministry of AYUSH through the creation of the Traditional Knowledge Digital Library (TKDL) that acts as a central repository of India‘s TK and has played a major role in the cancellation and withdrawal of foreign patent applications based on India‘s TK. The digital library is the major source of documenting India‘s TK in the name of the traditional community as TK holders. The documented TK in the name of TK Holders (community/tribe/local government body/state government/central government) acts as a tool to protect TK from any unlawful rights over existing TKs and to get exclusive IP rights over such TK.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'India has taken various legislative and administrative measures to ensure that the TK is protected and fair means of benefit sharing emerging out of TK is undertaken.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts/Laws: India has no separate legislation for protecting TCEs, but these can be protected under TK Protection System, Copyrights, Geographical Indications and Trademarks.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: India has created Traditional Knowledge Digital Library (TKDL) and Traditional Knowledge Resource Classification (TKRC) to protect Indian traditional medicinal knowledge and prevent its misappropriation at International Patent Offices',
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
