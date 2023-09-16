import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter10 extends StatefulWidget {
  @override
  _Chapter10State createState() => _Chapter10State();
}

class _Chapter10State extends State<Chapter10> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fnba.mp4?alt=media&token=32d5a3b9-aec6-4a10-a7bf-806b3e4ac2a5',
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
        title: Text('Chapter 10: Biodiversity'),
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
                    'Chapter 10 Biodiversity',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'India is a megadiverse country with 2.4% of the world\'s land area and accounts for 7-8% of all recorded species, including species of plants and species of animals. Due to certain inevitable things happening in the country like population explosion, climate change and lax implementation of environmental policies, several species of plants and animals are facing the threat of extinction. To ensure and regulate the sustainable use of the resources, National Biodiversity Authority (NBA) was established in 2003 by the Central Government to implement India‘s Biological Diversity Act (2002). The NBA has its Headquarters in Chennai, Tamil Nadu. It is an autonomous statutory body that comes under the Ministry of Environment, Forest and Climate Change, Government of India. The prominent functions of the NBA are:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'To facilitate and advise the Government of India on issues of conservation, sustainable use of biological resources and fair, equitable sharing of benefits of use arising out of the utilization of biological resources.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'To assist the State Governments in the selection of areas of biodiversity importance under Sub-Section (1) of Section 37 as heritage sites and measures to be adopted for the management of such heritage sites.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The authority has created dedicated boards in 28 states called as State Biodiversity Board (SBB). The important functions of the board are:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Regulation of the matters relating to the conservation of biodiversity.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Sustainable use of its components.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Equitable sharing of the benefits arising out of the utilization of biological resources.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'To monitor the local level committees known as Biodiversity Management Committees (BMCs).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The NBA is supporting a total of 2,05,794 BMCs in 28 states of India. The committees are responsible for promoting conservation, sustainable use and documentation of biological diversity, including preservation of habitats, conservation of landraces, folk varieties and cultivators, domesticated stocks and breeds of animals and microorganisms, besides chronicling of knowledge relating to biological diversity.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Biological Diversity Act, 2002: The ‗Biological Diversity Act‘ was enacted in 2002 to promote the conservation of biological resources in India and establishing mechanisms for equitable sharing of benefits arising from the use of genetic resources of the country. In compliance with the United Nation‘s guided ‗Convention for Biological Diversity‘ (CBD), India became a party to CBD in 2002 and enacted the Biological Diversity Act. The Act describes the biological resources as ‗plants, animals and micro-organisms or parts thereof, their genetic material and by-products (excluding value added products) with actual or potential use or value, but does not include human genetic material‘ and biological diversity as',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '‗the variability among living organisms from all sources and the ecological complexes of which they are part, and includes diversity within species or between species and of ecosystems‘',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'India has been exclusively tagged as a megadiverse nation that houses nearly 10% of the world‘s biodiversity. India possesses 22 agro-biodiversity hotspots possessing rich biodiversity. India has set up twelve national repositories for the safe deposit of various types of existing biological resources.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: Cartagena Protocol (2000; enforced in 2003) and Nagoya Protocol (2010; enforced in 2014).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Enactment of Biological Diversity Act, 2002: Ministry of Environment, Forests and Climate Change, Government of India has established:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'National Biodiversity Authority (NBA; at the national level).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'State Biodiversity Boards (SBB; at the state level; in 28 states).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Biological Management Committees (BMCs; at the local level; 2, 05,794 BMCs set up).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'NBA has authorized BMCs to create the People‘s Biodiversity Register (PBR), which is a legal document that contains an inventory of biological resources and knowledge available at the local level covered under BMC. These bodies also help in recognizing',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '‗Biological Heritage Sites‘ in India that possess rich biodiversity e.g. Gharial Rehabilitation Centre, Lucknow, Uttar Pradesh.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Any foreign national or non-resident Indian or any foreign company cannot use the biological resources of India without prior permission and authorization from the NBA.',
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
