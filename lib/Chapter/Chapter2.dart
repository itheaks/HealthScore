import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter2 extends StatefulWidget {
  @override
  _Chapter2State createState() => _Chapter2State();
}

class _Chapter2State extends State<Chapter2> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fcopy.mp4?alt=media&token=0f009c91-1cd0-4d56-b7fd-ee64fe39631a',
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
        title: Text('Chapter 2: Copyrights'),
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
                    'Chapter 2 Copyrights',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: \'Copyrights\' refer to the legal rights provided by law to the original creator of the work in the fields of literature and computer software. The \'Related Rights\' encompasses the author‘s work in the fields of dramatics, sound recording, film/video recordings, paintings, architecture, etc.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility Criteria: To qualify for Copyright protection, a work must exist in some physical (or tangible) form. The Copyright work has to be original i.e. the author created it from independent thinking void of duplication. It may appear similar to already existing works but should not be the same. The original work may lack in quality or quantity or aesthetic merit or all these parameters; still, it will pass the test of copyrightable work.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts & Laws: Copyright Act, 1957 of India. This Act provides rights of reproduction, communication to the masses, adaptation and translation of the work.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: The administration of matters pertaining to Trademarks is carried out by the Office of CGDPDTM, Department for Promotion for Industry and Trade (DPIIT) under the Ministry of Commerce and Industry, GoI.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: Copyrights provide exclusive rights to the author in the areas of publication, distribution, and usage. A Copyright owner enjoys two types of rights i.e. Economic Rights (or Proprietary Rights) and Moral Rights (or Personal Rights). Economic Rights are associated with financial benefits accruing from the sale of copyrights. Moral Rights include \'Right of Paternity‘ and \'Right of Integrity‘. The \'Right of Paternity‘ - even if the Copyright has been licensed to another party, the original author of the work retains the right to claim authorship. The \'Right of Integrity‘- the original author has the right to prevent misuse of the work e.g. alterations/additions/deletions in work resulting in misrepresentation of the said work or harming the honour and reputation of the author.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity Period: In general, the validity of Copyright is for 60 years. This period starts either from the year after the death of the author (in case of literature, dramatic, musical and artistic works) or from the date of publication of the work (in case of cinematograph films, sound recordings, photographs, posthumous publications, works of government and works of international organizations).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Exceptions to Rights: The Act provides for certain exceptions to infringement of Copyright, and is termed as \'Fair Use Doctrine‘. A few examples of \'Fair Use Doctrine‘ are the use of copyrighted work for personal use i.e. studies or research, reproduction of the work by teachers or scientific researchers, making copies (up to 3) of copyrighted material and playing songs/music during bonafide religious ceremonies including a marriage function.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Items that cannot be registered as Copyrights: The works not under the jurisdiction of Copyrights include ideas, concepts, facts, titles, names, slogans, short phrases, short word combinations, methods, or factual information. Certificates are not considered as Copyrightable subject matter as there is not much scope for creativity.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: India is a member of the following Conventions: Berne Convention for the Protection of Literary and Artistic Works, 1886; Universal Copyright Convention, 1952. Rome Convention is for the Protection of Performers, Producers of Phonograms and Broadcasting Organizations, 1961; TRIPS Agreement, 1995.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Enforcement: Using the copyrighted work without the consent of the copyright owner is termed \'infringement‘. The owner can take legal action against the infringement of his rights.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• In India, the following classes of Copyrights exist: Literature (Books, Essays, Research articles, Oral speeches, Lectures, Computer Programme, Software, Databases); Dramatics (Screenplays, Dramas); Sound Recordings (Recording of sounds); Artistic (Drawing, Painting, Logo, Map, Chart, Photograph, Work of Architecture, Engraving, Craftsmanship); Musical: Musical notations). A musical work need not be written down to enjoy Copyright protection. Cinematograph Films (visual recording such as motion pictures, TV programmes; sound recording), etc.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The Copyright symbol © (the letter C in a circle), or the word. \'Copyright‘, or the abbreviation \'Copr.‘ The elements for sound recordings generally require the same three elements, except the symbol is ℗ (the letter P in a circle) instead.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The duration of the existence of the physical form may vary from a very short period to many years. Even hurriedly scribbled notes for an impromptu speech is considered copyrightable material.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• It is not necessary to register a work to claim Copyright. Once a work is created via any medium, the work receives automatic Copyright safety. There is no formal request to be submitted to the office of the Copyright, for acquiring Copyright.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Copyright registration does not confer any rights. It is merely a prima facie proof of an entry in respect of the work in the Copyright register maintained by the Registrar of Copyrights.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The person who created the work is considered as the first (original) holder (owner) of the copyright.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• In case the author is an employee and has been contracted to do the work by a proprietor (of the company/firm/society/organization, etc.), the owner of the Copyright shall be the proprietor.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The person delivering a speech is the first owner of the Copyright.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• There can be more than one legal holder of a single copyright e.g. a musical sound recording has many rights holders, such as the lyricist, music composer, singer, musicians and sound recorders.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The Copyright registration for a Website, as a whole, is not possible. However, different components of a website can be granted Copyright registration.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• A computer or mobile App qualifies for Copyright registration. An Application (App) is a complete, self-contained computer program designed to perform a specific task.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Creative work is not protected and enforced automatically worldwide because Copyright laws are territorial by nature i.e. Laws are valid only within the country in which they have been created. To secure protection to Indian works in foreign countries, the author needs to apply separately to each country or through dedicated international \'Conventions on Copyright and Neighboring (related) Rights‘, provided a country is a member of such Conventions.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Copyrights and Internet: One should be careful of Copyright/fair use principles when downloading material from the internet. Note that material may have been placed on the internet without the author‘s permission.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• If someone swipes your picture/song/video from the internet and uses it (without seeking your consent), it is a Copyright infringement.',
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
