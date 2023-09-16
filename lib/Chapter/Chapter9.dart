import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'downloading_progress_dialog.dart';
import 'package:http/http.dart';

class Chapter9 extends StatefulWidget {
  @override
  _Chapter9State createState() => _Chapter9State();
}

class _Chapter9State extends State<Chapter9> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
      'https://firebasestorage.googleapis.com/v0/b/fun-with-ip-df613.appspot.com/o/Videos%2Fpbr.mp4?alt=media&token=3f3fa90c-9c0d-43eb-9af3-0e602a82b522',
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
        title: Text('Chapter 9: Plants'),
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
                    'Chapter 9 Plants',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Plant Variety: A new plant variety [Any variety that fulfils the Distinctness, Uniformity and Stability (DUS) criteria] can be registered as the Plant Breeder\'s Rights (PBRs) to encourage the development of new varieties of plants. Under the unique system of IPR, protection to new plant varieties is provided through \'Plant Breeder‘s Right‘ (PBR), granted to the breeder of the new plant variety. The protection is provided under the independent \'sui generis’ system (sui generis system is a unique system in which new national laws and international norms are administered as per the requirement. Such systems are generally adopted for the IP protection of biodiversity and genetic resources in most of the countries).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Need for Plant Protection as an IP: The development of new plant varieties with improved yields, better quality and higher pest and disease resistance have contributed immensely to agricultural productivity. Plant Breeders spend years developing new plant varieties with superior characteristics that require substantial financial investments. Therefore, IP protection of newly developed plant varieties offers a reward system for breeders and further encourages them to develop new plant varieties.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Treaties/Conventions/Agreements: To include plant variety protection under the realm of IP, two main treaties have played an important role. Union Internationale Pour la Protection des Obtentions Végétales (UPOV) (English version - International Convention for the Protection of New Plant Varieties), was held in 1961 in Paris and TRIPS Agreement (1995).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'In alignment with TRIPS Agreement, India selected the sui generis system over patent under the \'Plant Variety Protection and Farmers Rights (PVP&FR) Act, 2001‘. The Ministry of Agriculture and Farmers Welfare, Government of India, has established \'Plant Variety Protection and Farmer‘s Rights (PVP&FR) Authority‘ based in New Delhi. The plant breeders and farmers can register their new plant varieties with PVP&FR Authority and subsequently claim their ownership rights associated with the registered plant variety.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The PVP&FR Authority issues a \'Certificate of Registration‘ for a new plant variety under PVP&FR Act, 2001 that grants exclusive rights to plant breeder (or licensee/agent/successor) to produce, market, sell, import or export and distribute the registered variety.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Eligibility: Novelty - Plant variety (propagated and harvested material) has not been exploited earlier than one year in India and earlier than four years outside India; Distinctiveness - Plant variety is distinct in its essential characteristics from other plant varieties; Uniformity - all plants of the plant variety show the same characteristics (subjected to variation in generations due to propagation) and Stability - through many generations, essential characteristics of the plant should not change in terms of quality and content.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Types of Plant Varieties Registered under PVP&FR Act, 2001: Different types of plant varieties that can be registered in India under the PVP&FR Act are as follows:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- New Variety - A new variety that confers the criteria of Novelty, Distinctiveness, Uniformity & Stability (NDUS).',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Extant Variety - A variety can be registered as an extant variety if it is - i) notified under Section 5 of Seeds Act, 1966 or ii) is a farmer‘s variety or iii) variety whose common knowledge prevails and available in the public domain.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Farmer’s Variety – This is a variety that is traditionally cultivated and developed by the farmers in the field. These varieties can be a wild relative of any variety of which farmer has a common knowledge.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Essentially Derived Variety - This is a variety that is derived from a new variety of extant variety or farmer‘s variety.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Plant Varieties which cannot be Registered in India: Plant variety whose commercial exploitation is detrimental for the environment or public order or public morality or health or human/animal/plant life; Plant variety that involves the use of technology which is detrimental to human/animal/plant life; Plant variety that belongs to the genera or species which is not listed in the notification issued by the Government of India.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Validity: The protection period varies depending on plant variety. Trees and Vines - 18 years, Extant Varieties - 15 years (from the time variety was government notified under Seed Act, 1966); other crops - 15 years.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Plant Breeders Rights (PBRs): The exclusive rights granted to the breeders are to produce, sell, market, distribute, export or import the registered plant variety. However, such rights are exempted for using plant variety for research purposes.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Farmer’s Rights: In order to protect and encourage the farmer‘s contribution to conserving and improving plant genetic resources, farmer‘s rights were introduced. These rights protect farmers from the stringent IPR, such as patents that confers monopoly over the product/technology patented. PVP&FR Act 2001 describes farmer as the \'cultivator (cultivating the land himself or through direct supervision), or one who conserves and preserves any wild species or traditional varieties, or a breeder who adds value to such wild species and traditional varieties through selection and identification of their useful properties‘.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'The \'Farmer‘s Rights‘ under PVP&FR Act, 2001 are as follows:',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Rights on seed - provides rights to the farmers to save seeds, use seeds and share, exchange or sell seeds to other farmers.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to register - provides farmers with the right to register their traditional plant varieties and procure exclusive rights over their registered variety.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to reward and recognition - farmer‘s contribution to agriculture is rewarded by means of the award presented by the National Gene Fund under PVP&FR Authority.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to benefit sharing - farmers or tribal communities that contributed to the development of new crop varieties are entitled to equitable sharing of benefits that emerge from the new crop variety. In addition to this, India has enacted the \'Biological Diversity Act, 2002‘ for preserving biological diversity existing in India along with establishing legal mechanisms for equitable sharing of benefits emerging from traditional biological resources (that also consist of plant varieties and plant products) and Traditional Knowledge.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to compensation for losses - The registered new plant varieties are subjected to sell with a number of claims over their performance and successful cultivation conditions. In case the registered plant variety does not perform as claimed, then farmers are provided with compensation for the losses.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Rights against undisclosed use of traditional varieties - this right protect farmers‘ interest when a breeder commercially exploits traditional variety and does not disclose it. The claim can be filed by any person on behalf of the farmer/tribal or local community.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to access to seed - this right directs the breeders of the registered plant variety to meet seed demands of the farmers at a reasonable price.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to free service - The farmers are exempted from fees to be paid during stages of registration of plant variety.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    '- Right to protection against accusations of infringement- this right protects the farmers from infringement and other legal accusations levied upon him due to his legal ignorance in using other‘s plant varieties.',
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Compulsory Licensing: PVP&FR Act, 2001 exercises the principle of Compulsory Licensing (CL), subject to the situation when plant variety is not available to the public at a reasonable price after three years of registration. The interested person can file an application to PVP&FR Authority for a grant of CL through Form PV-28.',
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
