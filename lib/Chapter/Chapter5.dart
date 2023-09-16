import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter5 extends StatefulWidget {
  @override
  _Chapter5State createState() => _Chapter5State();
}

class _Chapter5State extends State<Chapter5> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fgi.mp4?alt=media&token=5bf1d825-88f8-4d4f-b1da-81cf66c2cd7a',
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
        title: Text('Chapter 5: Geographical Indicator'),
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

                  //),
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
                    'Chapter 5 Geographical Indicator',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Definition: A GI is defined as a sign which can be used on products belonging to a particular geographical location/region and possesses qualities or a reputation associated with that region. In GI, there is a strong link between the product and its original place of production.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility: The goods should be essentially attributable to any geographical origin and in case where such goods are manufactured things, one of the activities of either the production or of processing or preparation of the goods concerned must take place in a territory, region or locality, as the case may be.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Acts/Laws: In India, GI is governed under the Geographical Indications of Goods (Registration & Protection) Act, 1999 and the Geographical Indications of Goods (Registration & Protection) Rules, 2002. The two common methods of protecting a GI are Sui generis systems (i.e. special regimes of protection) and under certification or collective mark systems.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Administration: The administration of matters pertaining to GI is carried out by the Office of CGDPDTM, under DPIIT, Ministry of Commerce and Industry, GoI.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Rights: A GI holder has the right to gift, sell, transfer/grant a license, mortgage, or enter into any other arrangement for consideration regarding their product. The holder of GI has the right to use and take legal action against a person who uses the product without his consent.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: Time limit of the GI tag is 10 years and can be renewed from time to time for a further period of 10 years each.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Items that cannot be registered as GI: Non-Registerable GIs are the ones that would be contrary to any law, contains scandalous or obscene matter and any matter likely to hurt the sentiments of society.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions: International Agreements for GI Administered by WIPO - Madrid Agreement (1891) for the International Registration of Marks; Nice Agreement (1957) for the International Classification of Goods and Services for the Registration of Marks; Lisbon Agreement (1958) for the Protection of Appellations of Origin.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Additional Information:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• The ownership/holders of GI (registered) can be the producers, as a group/association/cooperative society, or association or in certain cases, government too.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• GI products registered in India belong to the domains of handicrafts, agricultural, foodstuffs, alcoholic beverages, etc. The first GI tag in India was granted in 2004 to Darjeeling Tea and the latest being Kashmir Saffron and Manipur Black Rice (Chakhao) in 2020. A total of 370 GI have been registered in India till May 2020. Nearly 58% of these belong to handicrafts, followed by agriculture (30%). Other categories belong to foodstuff, manufacturing, and natural goods. A few standout GI are Mysore Silk (Karnataka), Kashmir Pashmina (Jammu & Kashmir), Banaras Sarees (Uttar Pradesh), Phulkari (Punjab, Haryana, Rajasthan). Tirupathi Laddu (Andhra Pradesh).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• Registered GI products are granted a tag, which is printed on the registered products. The tag confirms the genuineness of the product in terms of its production (by set standards) and location of production.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• GI registered products can be grown/produced in any part of the world using standards laid down by the GI Registry. However, these products cannot be labelled as GI as they are not produced/manufactured in a specific geographical location, as mentioned in the official records maintained by the Office of GI.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• GI certified goods are classified under 34 different classes.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '• India is among the geographically and traditionally rich countries. The scope of generating GI products in India is enormous. However, till May 2020, a total of 370 GI have been registered in India.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Generic GI - When a GI-certified product becomes more popular by the name of the origin of the place, it is termed as Generic GI. For example, Camembert Cheese. Camembert is the name of the place in France where this special cheese is produced. In food places, merely saying the word Camembert denotes Camembert cheese.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Homonymous GI - When two or more products, which have been granted GI status, are spelt or pronounced alike, but their source of origin is different (usually in different countries), such GI are termed as Homonymous GI. One of the examples of the homonymous GI is a wine named \'Rioja‘, which is a GI for wine produced in two countries (Argentina and Spain). In such a case, the applicants (of GI) need to prove different characteristics of their products. People may get confused if two Homonymous GI‘s are being sold at the same place.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Difference between GI and Appellation of Origin - In the case of an appellation of origin, the link with the place of origin is very strong. This generally means that the raw materials should be sourced in the place of origin and that the processing of the product should also take place there. In the case of GI, a single criterion attributable to the geographical origin is sufficient, be it quality or another characteristic of the product – or even just its reputation.',
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
