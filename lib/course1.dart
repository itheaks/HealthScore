import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:xyz/profile.dart';
import 'package:xyz/quiz.dart';

import 'home1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Course1Screen(),
    );
  }
}

class Course1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 20),
          Text(
            'Interestings Facts',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
      SizedBox(
        width: 0.9 * MediaQuery.of(context).size.width,
        child: CarouselSlider(
          items: [
            _buildFactCard(
              'The first recorded copyright law was enacted in 1710 in the United Kingdom, known as the Statute of Anne.',
              Colors.blue,
            ),
            _buildFactCard(
              'The world\'s oldest known patent document, granted in 500 BCE, was discovered in Syria and protected a method of making purple dye.',
              Colors.green,
            ),
            _buildFactCard(
              'In 1971, the U.S. patent office issued a patent for a "Method of Exercising a Cat," which involved using a laser pointer to entertain felines.',
              Colors.orange,
            ),
            _buildFactCard(
              'The concept of IP protection was advocated by Thomas Jefferson, who believed that inventors should have exclusive rights to their creations.',
              Colors.purple,
            ),
            _buildFactCard(
              'In 2014, a man tried to trademark the word "react" and was met with backlash from the YouTube community, leading to a change in trademark policy.',
              Colors.brown,
            ),
            _buildFactCard(
              'Trade secret protection was once referred to as "mystery of manufacture" and was rooted in medieval trade guilds.',
              Colors.red,
            ),
            _buildFactCard(
              'The shape of the Coca-Cola bottle was granted trademark protection in 1977.',
              Colors.teal,
            ),
            _buildFactCard(
              'The creator of the board game Monopoly originally patented it in 1904 as "The Landlord\'s Game."',
              Colors.cyan,
            ),
            _buildFactCard(
              'The perfume industry relies heavily on trade secret protection for their fragrance formulas.',
              Colors.deepOrange,
            ),
            _buildFactCard(
              'The WIPO Copyright Treaty, adopted in 1996, extended copyright protection to digital works and the internet.',
              Colors.indigo,
            ),
            _buildFactCard(
              'The U.S. Copyright Office received over 512,000 copyright registrations in 2020.',
              Colors.blue,
            ),
            _buildFactCard(
              'The "patent thicket" phenomenon refers to a dense web of overlapping patents that can hinder innovation.',
              Colors.green,
            ),
            _buildFactCard(
              'The "Patent Cliff" refers to the loss of patent protection for multiple blockbuster drugs, leading to a surge in generic versions.',
              Colors.orange,
            ),
            _buildFactCard(
              'The concept of "patent exhaustion" allows the buyer of a patented product to use or resell it without further restrictions from the patent holder.',
              Colors.purple,
            ),
            _buildFactCard(
              'Some countries have "fair dealing" or "fair use" exceptions to copyright law that allow limited use without permission for purposes like research or criticism.',
              Colors.brown,
            ),
            _buildFactCard(
              'In 2018, a selfie-snapping monkey named Naruto became the center of a copyright dispute over who owned the rights to the photos.',
              Colors.red,
            ),
            _buildFactCard(
              'The U.S. has a Copyright Small Claims Board to provide a streamlined process for resolving small copyright claims without costly litigation.',
              Colors.teal,
            ),
            _buildFactCard(
              'The "Kardashian Kard," a prepaid debit card endorsed by the Kardashian sisters, faced trademark issues and was ultimately discontinued.',
              Colors.cyan,
            ),
            _buildFactCard(
              'IP rights have been used to protect unique car designs, such as the shape of the Volkswagen Beetle.',
              Colors.deepOrange,
            ),
            _buildFactCard(
              'The U.S. Copyright Act of 1909 didn\'t originally include motion pictures as eligible for copyright protection.',
              Colors.indigo,
            ),
            _buildFactCard(
              'A famous trademark dispute occurred between Apple Inc. and The Beatles\' Apple Corps over the use of the Apple name.',
              Colors.blue,
            ),
            _buildFactCard(
              'In the 19th century, the U.S. granted patents for various strange inventions, including "life preservers for chickens."',
              Colors.green,
            ),
            _buildFactCard(
              'The U.S. Lanham Act allows for trademark registration of distinctive sounds, such as the roar of a lion for MGM Studios.',
              Colors.orange,
            ),
            _buildFactCard(
              'The "work-for-hire" doctrine means that copyright for works created by employees as part of their job belongs to the employer.',
              Colors.purple,
            ),
            _buildFactCard(
              'Some countries offer a "utility model" protection, which grants shorter-term patents for incremental inventions.',
              Colors.brown,
            ),
            _buildFactCard(
              'Copyright protection usually begins the moment a work is created and fixed in a tangible medium, without the need for registration.',
              Colors.red,
            ),
            _buildFactCard(
              'In the 1950s, Chuck Berry was involved in a copyright dispute over the song "Maybellene."',
              Colors.teal,
            ),
            _buildFactCard(
              'The World Trade Organization (WTO) oversees international agreements related to IP rights.',
              Colors.cyan,
            ),
            _buildFactCard(
              'The U.S. Supreme Court case Alice Corp. v. CLS Bank (2014) clarified the patent eligibility of software and business methods.',
              Colors.deepOrange,
            ),
            _buildFactCard(
              'The U.S. has a Copyright Royalty Board to determine royalty rates for certain uses of copyrighted works.',
              Colors.indigo,
            ),
            _buildFactCard(
              'Some countries have "private copying levies" on blank media to compensate creators for potential copyright infringement when copying.',
              Colors.blue,
            ),
            _buildFactCard(
              'The Patent Act of 1836 introduced a requirement for patent models to accompany patent applications, but this was later abolished.',
              Colors.green,
            ),
            _buildFactCard(
              'Copyright law in some countries, like Japan, grants authors additional moral rights, such as the right to attribution.',
              Colors.orange,
            ),
            _buildFactCard(
              'In the 1960s, Andy Warhol faced copyright disputes over his use of famous photographs as the basis for his art.',
              Colors.purple,
            ),
            _buildFactCard(
              'The Indian Patent Office granted a patent for a "method of swinging" on a swing in 2006.',
              Colors.brown,
            ),
            _buildFactCard(
              'Some countries offer "design patents" to protect the ornamental appearance of a functional item.',
              Colors.red,
            ),
            _buildFactCard(
              'The "five-year rule" in trademark law allows the cancellation of trademarks that are not actively used in commerce for five years.',
              Colors.teal,
            ),
            _buildFactCard(
              'The U.S. Copyright Office has a program called "Recordation of Documents" for registering documents related to copyright ownership.',
              Colors.cyan,
            ),
            _buildFactCard(
              'Copyright duration varies widely around the world, with some countries offering shorter terms than others.',
              Colors.deepOrange,
            ),
            _buildFactCard(
              'In 2015, "Left Shark," a dancer during Katy Perry\'s Super Bowl halftime show, sparked discussions about copyright in costume designs.',
              Colors.indigo,
            ),
            _buildFactCard(
              'Some artists use non-fungible tokens (NFTs) to establish unique ownership and provenance of digital art.',
              Colors.blue,
            ),
            _buildFactCard(
              'The U.S. has a "first sale doctrine" that allows the resale of legally acquired copyrighted works, such as books and CDs.',
              Colors.green,
            ),
            _buildFactCard(
              'IP rights are integral to the protection of video game characters, storylines, and interactive elements.',
              Colors.orange,
            ),
            _buildFactCard(
              'In the 1980s, Atari faced copyright lawsuits over their popular video game "Pac-Man."',
              Colors.purple,
            ),
            _buildFactCard(
              'The U.S. Copyright Office allows copyright registration for architectural works, including blueprints and building designs.',
              Colors.brown,
            ),
            _buildFactCard(
              'The "Internet Archive" has faced copyright controversies over its digitization and distribution of books and other materials.',
              Colors.red,
            ),
            _buildFactCard(
              'The Hague Agreement allows for international registration of industrial designs to simplify the process for creators seeking protection in multiple countries.',
              Colors.teal,
            ),
            _buildFactCard(
              'Some companies use IP rights strategically to block competitors\' access to essential patents through "patent thickets."',
              Colors.cyan,
            ),
            _buildFactCard(
              'The European Union has a "Database Directive" that grants copyright protection to original databases.',
              Colors.deepOrange,
            ),
            _buildFactCard(
              'IP rights have a significant role in the protection of plant-related inventions, from genetically modified crops to new plant varieties.',
              Colors.indigo,
            ),
          ],
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 18 / 9,
          ),
        ),
      ),
          SizedBox(height: 20),
          Text(
            'Do you know ?',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 0.9 * MediaQuery.of(context).size.width,
            child: CarouselSlider(
              items: [
                _buildFactCard(
                  'The concept of IP dates back to ancient civilizations like Greece and Rome, which granted exclusive rights to inventors and authors.',
                  Colors.blue,
                ),
                _buildFactCard(
                  'The first U.S. patent was issued in 1790 to Samuel Hopkins for a method of making potash.',
                  Colors.green,
                ),
                _buildFactCard(
                  'Copyright protection typically lasts for the life of the author plus 70 years in many countries.',
                  Colors.brown,
                ),
                _buildFactCard(
                  'Trademarks can be sounds, colors, shapes, or even scents, not just words or logos.',
                  Colors.orange,
                ),
                _buildFactCard(
                  'Trade secrets can be protected indefinitely as long as they remain secret and provide a competitive advantage.',
                  Colors.purple,
                ),
                _buildFactCard(
                  'The Paris Convention for the Protection of Industrial Property, signed in 1883, established important international standards for IP protection.',
                  Colors.teal,
                ),
                _buildFactCard(
                  'The World Intellectual Property Organization (WIPO) was established in 1967 to promote and protect IP rights globally.',
                  Colors.red,
                ),
                _buildFactCard(
                  'IP rights can be licensed, allowing others to use patented inventions, copyrighted works, or trademarks for a fee.',
                  Colors.cyan,
                ),
                _buildFactCard(
                  'Patent trolls are individuals or companies that acquire patents primarily for the purpose of suing others for infringement.',
                  Colors.deepOrange,
                ),
                _buildFactCard(
                  'The "first-to-file" patent system, used in many countries, grants patents to the first inventor to file an application, not necessarily the first to invent.',
                  Colors.indigo,
                ),
                _buildFactCard(
                  'Open-source licenses, like the GNU General Public License (GPL), enable collaborative software development and distribution.',
                  Colors.blue,
                ),
                _buildFactCard(
                  'IP rights can be inherited, allowing heirs to benefit from the creations of their predecessors.',
                  Colors.green,
                ),
                _buildFactCard(
                  'IP rights can be traded and sold, contributing to the creation of intellectual property marketplaces.',
                  Colors.brown,
                ),
                _buildFactCard(
                  'The Berne Convention, established in 1886, harmonizes copyright laws across many countries and ensures that works are protected even without formal registration.',
                  Colors.orange,
                ),
                _buildFactCard(
                  'The U.S. Patent and Trademark Office (USPTO) receives over 600,000 patent applications annually.',
                  Colors.purple,
                ),
                _buildFactCard(
                  'The use of public domain works, whose copyright has expired, doesn\'t require permission or payment.',
                  Colors.teal,
                ),
                _buildFactCard(
                  'The patent application process can take several years, with rigorous examination and potential rejections.',
                  Colors.red,
                ),
                _buildFactCard(
                  'IP rights provide incentives for innovation by granting creators and inventors exclusive rights for a limited time.',
                  Colors.cyan,
                ),
                _buildFactCard(
                  'IP rights can be challenged in court, leading to high-stakes legal battles like the Apple vs. Samsung case.',
                  Colors.deepOrange,
                ),
                _buildFactCard(
                  'IP protection can extend to software code, protecting computer programs from unauthorized copying.',
                  Colors.indigo,
                ),
                _buildFactCard(
                  'Some IP rights, like trademarks, require ongoing use to maintain their protection.',
                  Colors.blue,
                ),
                _buildFactCard(
                  'The United States has a "fair use" doctrine that allows limited use of copyrighted material without permission for purposes like education, commentary, or parody.',
                  Colors.green,
                ),
                _buildFactCard(
                  'The "Right to be Forgotten" in Europe allows individuals to request the removal of outdated or irrelevant information about themselves online.',
                  Colors.brown,
                ),
                _buildFactCard(
                  'IP rights extend to domain names, allowing owners to protect their online identities.',
                  Colors.orange,
                ),
                _buildFactCard(
                  'Some countries grant "moral rights" to authors, allowing them to protect the integrity of their works even after they\'ve been sold or transferred.',
                  Colors.purple,
                ),
                _buildFactCard(
                  'IP rights play a critical role in the pharmaceutical industry, protecting drug formulations and preventing generic competition for a period.',
                  Colors.teal,
                ),
                _buildFactCard(
                  'Many IP disputes are resolved through arbitration and mediation rather than lengthy court battles.',
                  Colors.red,
                ),
                _buildFactCard(
                  'IP rights can be geographically limited, allowing for different protections in various countries.',
                  Colors.cyan,
                ),
                _buildFactCard(
                  'The public can access patent databases to review and search for existing patents and inventions.',
                  Colors.deepOrange,
                ),
                _buildFactCard(
                  'The creation of 3D-printed objects can raise complex IP issues related to design and patent infringement.',
                  Colors.indigo,
                ),
                _buildFactCard(
                  'Famous fictional characters like Mickey Mouse have had their copyrights extended multiple times to keep them from entering the public domain.',
                  Colors.blue,
                ),
                _buildFactCard(
                  'Celebrities often trademark their names and likenesses to protect against unauthorized endorsements or merchandise.',
                  Colors.green,
                ),
                _buildFactCard(
                  'IP rights can be used as collateral for loans or investments, providing financial value to creators and inventors.',
                  Colors.brown,
                ),
                _buildFactCard(
                  'Some IP rights, like plant variety protection, extend to new and unique plant species developed through breeding.',
                  Colors.orange,
                ),
                _buildFactCard(
                  'The music industry uses IP rights to protect lyrics, sheet music, and recordings separately.',
                  Colors.purple,
                ),
                _buildFactCard(
                  'Some artists create art installations or performances that are only intended to exist temporarily, challenging traditional copyright notions.',
                  Colors.teal,
                ),
                _buildFactCard(
                  'IP rights have a role in the protection of indigenous knowledge and cultural heritage.',
                  Colors.red,
                ),
                _buildFactCard(
                  'IP rights are vital in the video game industry, protecting game characters, artwork, and code.',
                  Colors.cyan,
                ),
                _buildFactCard(
                  'AI-generated content, like music or art, raises questions about the ownership of creative works.',
                  Colors.deepOrange,
                ),
                _buildFactCard(
                  'Non-disclosure agreements (NDAs) are commonly used in business to protect trade secrets and confidential information.',
                  Colors.indigo,
                ),
                _buildFactCard(
                  'IP rights can be licensed to others for specific uses, such as merchandising for movies or TV shows.',
                  Colors.blue,
                ),
                _buildFactCard(
                  'IP rights play a role in protecting the distinctive packaging and labeling of food products.',
                  Colors.green,
                ),
                _buildFactCard(
                  'Copyright infringement in the digital age can lead to complex issues related to online piracy and streaming services.',
                  Colors.brown,
                ),
                _buildFactCard(
                  'IP rights can also apply to architectural designs, protecting the originality of buildings and structures.',
                  Colors.orange,
                ),
                _buildFactCard(
                  'The unauthorized replication of fashion designs, known as "fast fashion," can infringe on copyright and trademark rights.',
                  Colors.purple,
                ),
                _buildFactCard(
                  'IP rights can be applied to tattoo designs, with tattoo artists retaining the rights to their original work.',
                  Colors.teal,
                ),
                _buildFactCard(
                  'IP protection is vital in the pharmaceutical industry, encouraging research and development of new drugs.',
                  Colors.red,
                ),
                _buildFactCard(
                  'IP rights extend to collectibles like trading cards, comic books, and action figures.',
                  Colors.cyan,
                ),
                _buildFactCard(
                  'IP rights can be used to protect databases and prevent unauthorized extraction or use of data.',
                  Colors.deepOrange,
                ),
                _buildFactCard(
                  'IP rights have a role in the protection of cultural heritage, allowing for the preservation and dissemination of historic works and artifacts.',
                  Colors.indigo,
                ),
              ],
              options: CarouselOptions(
                autoPlay: true,
                enlargeCenterPage: true,
                aspectRatio: 18 / 9,
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 0.4 * MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.brown], // Change the gradient colors to pink and brown
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home1Screen()),
                      );
                    },
                    child: Text(
                      'Course',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
              Container(
                width: 0.4 * MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.pink, Colors.brown], // Change the gradient colors to pink and brown
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuizScreen()),
                      );
                    },
                    child: Text(
                      'Quiz',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            width: 0.9 * MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.purple.shade100, Colors.purpleAccent, Colors.purple.shade100], // Change the gradient colors to pink and brown
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
                child: Text(
                  'About',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),

      ]
      ),
    );
  }
}

Widget _buildFactCard(String text, Color backgroundColor) {
  return Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Text(
        text,
        style: TextStyle(fontSize: 15, color: Colors.white),
      ),
    ),
  );
}