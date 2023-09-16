import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FAQScreen(),
    );
  }
}

class FAQScreen extends StatefulWidget {
  @override
  _FAQScreenState createState() => _FAQScreenState();
}

class _FAQScreenState extends State<FAQScreen> {
  List<bool> _isExpandedList = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Case Studies'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildFAQItem(0,
                'Diamond v. Chakrabarty (1980): Expanding the Bounds of Patentable Subject Matter',
                'In the case of Diamond v. Chakrabarty, the United States Supreme Court made a groundbreaking decision that had far-reaching implications for the world of biotechnology and intellectual property rights. Dr. Ananda Chakrabarty, a microbiologist, had developed a genetically modified bacterium capable of breaking down crude oil, a potential solution to oil pollution. However, the U.S. Patent and Trademark Office initially denied his patent application, arguing that living organisms were not patentable subject matter.\nThe case ultimately reached the Supreme Court, which ruled in favor of Chakrabarty, asserting that living organisms could indeed be patented if they were human-made and had distinctive, useful properties. This decision expanded the scope of patentable subject matter to include biotechnological innovations, sparking significant advancements in the biotech industry.\nWhat Students Can Learn: \n- The Evolving Nature of Patent Law: Diamond v. Chakrabarty demonstrates how patent law adapts to technological advancements. Understanding this adaptability is crucial for aspiring inventors and innovators.\n- The Intersection of Science and Law: This case underscores the importance of interdisciplinary knowledge. Biotechnology, in particular, requires a deep understanding of both scientific principles and legal frameworks.\n- Impact on Innovation: Chakrabarty victory paved the way for countless biotech patents, encouraging innovation in fields such as medicine, agriculture, and environmental science.\n- Ethical Considerations: Students can explore the ethical dilemmas surrounding biotech patents, including questions about ownership, access, and the potential for unintended consequences.'
            ),
            _buildFAQItem(1,
                'LVMH vs. eBay (2008) - Protecting Brand Integrity in the Digital Marketplace',
                'LVMH vs. eBay (2008) - Protecting Brand Integrity in the Digital Marketplace \nIn 2008, luxury goods conglomerate LVMH (Moët Hennessy Louis Vuitton) took legal action against the popular\n online marketplace eBay. The case revolved around LVMH s allegations that eBay allowed the sale of counterfeit products, posing a significant threat to the integrity of its high-end \nbrands, including Louis Vuitton and Christian Dior.\nKey Points: \nCounterfeit Challenge: LVMH argued that eBay had a responsibility to prevent the sale of counterfeit goods on its platform. Counterfeit products not only erode brand value but can also deceive consumers. \nBrand Protection: The case underscored the importance of brand protection and the lengths to which companies may go to safeguard their image. LVMH insisted that maintaining the exclusivity and authenticity of their products was vital to their brands success.\nOnline Marketplace Responsibility: The legal battle raised questions about the role of online marketplaces in policing their platforms. It touched on issues related to liability and the need for effective anti-counterfeiting measures.\nStudent Learning: \n- The LVMH vs. eBay case teaches students several valuable lessons: \n- Brand Integrity: Protecting brand integrity is paramount for businesses. Counterfeit goods can not only lead to financial losses but also tarnish a brands reputation. \n- E-commerce Challenges: The case highlights the unique challenges of e-commerce platforms in ensuring the authenticity of products sold by third-party sellers. \n- Legal Responsibility: It underscores the legal responsibilities of online marketplaces to combat counterfeit products and maintain a trustworthy environment.'),
            _buildFAQItem(2,
                'YouTube vs. Viacom (2010): Navigating Copyright Challenges in the Digital Age',
                'The YouTube vs. Viacom case of 2010 was a landmark legal battle that had far-reaching implications for the digital landscape and copyright law. Viacom, a major media conglomerate, sued YouTube, alleging that the video-sharing platform had knowingly allowed users to upload and share Viacoms copyrighted content without authorization.\nThis case delved into the heart of online content sharing and the responsibilities of digital platforms. It centered on the safe harbor provisions of the Digital Millennium Copyright Act (DMCA), which shield online service providers from copyright liability for user-generated content if they meet certain conditions, such as promptly removing infringing material upon notification.\nKey takeaways for students from this case is the critical balance between fostering innovation and protecting intellectual property. YouTubes success hinged on user generated content, and the DMCAs safe harbor provisions played a pivotal role in enabling this model. \nThe case ultimately settled out of court, but it underscored the need for digital platforms to implement robust copyright protection mechanisms while respecting user rights. Students can learn that in the digital age, understanding the intricacies of copyright law and developing effective content moderation systems are essential for companies operating in the online space. This case serves as a reminder that innovation and intellectual property rights can coexist, but they require careful navigation and consideration.'),
            _buildFAQItem(3,
                'Google v. Oracle (2021): Defining the Boundaries of Software Copyright',
                'The legal battle between Google and Oracle was a landmark case that delved deep into the intricate realm of software development and copyright law. The dispute revolved around Google use of Java APIs (Application Programming Interfaces) in its Android operating system. Oracle claimed that this constituted copyright infringement, while Google argued that it was fair use.\n After years of litigation, the U.S. Supreme Court ruled in favor of Google, stating that its use of Java APIs was indeed fair use. This decision had significant implications for the software industry, as it clarified the limitations of copyright protection for software interfaces.\nWhat Students Can Learn:\n- Fair Use Doctrine: Students can gain insights into the fair use doctrine, a critical aspect of copyright law. They can understand the factors that courts consider when determining fair use, such as purpose, nature, amount, and effect on the market.\n- Balancing Innovation and Copyright: This case highlights the delicate balance between encouraging innovation and protecting intellectual property. Students can explore the tension between these two goals and its impact on the tech industry.\n- The Importance of APIs: Application Programming Interfaces are fundamental to modern software development. This case underscores their significance and the legal challenges associated with their use.\n- Legal Precedents: Students can see how court decisions in intellectual property cases can set important legal precedents that shape future innovations and disputes.'),
            _buildFAQItem(
                4, 'Napster (2000): Shaping the Digital Copyright Landscape',
                'The Napster case of 2000 was a watershed moment in the world of intellectual property rights, particularly in the context of digital music and file sharing. Napster, a pioneering peer-to-peer file-sharing service, allowed users to share music files freely over the internet. The case revolved around copyright infringement claims brought by the music industry, represented by the Recording Industry Association of America (RIAA), against Napster and its founder, Shawn Fanning. \nUltimately, Napster was found liable for contributory copyright infringement, and the court issued an injunction that effectively shut down the service. This case set a precedent for future debates about the boundaries of copyright in the digital age.\nWhat Students Can Learn: \n- Copyright in the Digital Age: The Napster case illustrates the challenges of enforcing copyright in the digital realm. It is a case study in how technological advancements can clash with established legal norms. \n- Ethical Implications: Students can explore the ethical dilemmas surrounding file-sharing platforms and copyright infringement. They can consider questions of fair use, access to cultural content, and the impact on artists and the music industry. \n- Innovation and Disruption: Napsters disruptive technology reshaped the music industry and paved the way for legal digital music distribution services. This case underscores the tension between innovation and copyright protection. \n- Legal Responsibility: It highlights the legal responsibilities of technology companies for the actions of their users, which remains a critical issue in todays digital landscape.'),
          ],
        ),
      ),
    );
  }

  Widget _buildFAQItem(int index, String title, String content) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: ExpansionPanelList(
        elevation: 0,
        expandedHeaderPadding: EdgeInsets.all(16.0),
        animationDuration: Duration(milliseconds: 500),
        children: [
          ExpansionPanel(
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                // Add an image above the description
                leading: Image.asset(
                  'assets/${index + 11}.jpg',
                  width: 80, // Adjust the width as needed
                  height: 80, // Adjust the height as needed
                ),
              );
            },
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                content,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            isExpanded: _isExpandedList[index],
          ),
        ],
        expansionCallback: (int itemIndex, bool isExpanded) {
          setState(() {
            _isExpandedList[index] = !isExpanded;
          });
        },
      ),
    );
  }
}
