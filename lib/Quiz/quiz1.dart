import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class QuizQuestion {
  final int questionId;
  final int level;
  final String question;
  final Map<String, String> options;
  final String correctAnswer;

  QuizQuestion({
    required this.questionId,
    required this.level,
    required this.question,
    required this.options,
    required this.correctAnswer,
  });
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.purple,
          accentColor: Colors.pink,
          backgroundColor: Colors.white,
        ),
      ),
      home: Quiz1Screen(),
    );
  }
}
class Quiz1Screen extends StatefulWidget {
  @override
  _Quiz1ScreenState createState() => _Quiz1ScreenState();
}

class _Quiz1ScreenState extends State<Quiz1Screen> {
  List<QuizQuestion> quizQuestions = [
    QuizQuestion(
      questionId: 1,
      level: 500,
      question: "What is a patent?",
      options: {
        "A": "A new technical solution to a problem",
        "B": "A type of copyright protection",
        "C": "A government grant for any invention",
        "D": "A business license",
      },
      correctAnswer: "A) A new technical solution to a problem",
    ),
    QuizQuestion(
      questionId: 2,
      level: 510,
      question: "What is the minimum requirement for an invention to be eligible for a patent?",
      options: {
        "A": "It must be useful",
        "B": "It must be innovative",
        "C": "It must be affordable",
        "D": "It must be artistic",
      },
      correctAnswer: "B) It must be innovative",
    ),
    QuizQuestion(
      questionId: 3,
      level: 520,
      question: "Which act governs patents in India?",
      options: {
        "A": "Copyright Act",
        "B": "Patent Act, 1970",
        "C": "Trademark Act",
        "D": "Industrial Design Act",
      },
      correctAnswer: "B) Patent Act, 1970",
    ),
    QuizQuestion(
      questionId: 4,
      level: 530,
      question: "Who administers matters related to patents in India?",
      options: {
        "A": "Ministry of Finance",
        "B": "Ministry of Commerce and Industry",
        "C": "Ministry of Education",
        "D": "Ministry of Defense",
      },
      correctAnswer: "B) Ministry of Commerce and Industry",
    ),
    QuizQuestion(
      questionId: 5,
      level: 540,
      question: "What rights does a patent owner have?",
      options: {
        "A": "The right to use the patented invention",
        "B": "The right to sell the patent",
        "C": "The right to decide who may use the patented invention",
        "D": "The right to keep the invention secret",
      },
      correctAnswer: "C) The right to decide who may use the patented invention",
    ),
    QuizQuestion(
      questionId: 6,
      level: 550,
      question: "How long are patent rights protected?",
      options: {
        "A": "10 years",
        "B": "15 years",
        "C": "20 years",
        "D": "25 years",
      },
      correctAnswer: "C) 20 years",
    ),
    QuizQuestion(
      questionId: 7,
      level: 560,
      question: "Under what conditions can a patent be used for teaching and research purposes without infringement?",
      options: {
        "A": "As per Section 47 of the Act",
        "B": "With the patent owner's permission",
        "C": "Only for non-commercial purposes",
        "D": "Never, patents cannot be used for teaching or research",
      },
      correctAnswer: "A) As per Section 47 of the Act",
    ),
    QuizQuestion(
      questionId: 8,
      level: 570,
      question: "Which of the following items cannot be patented according to The Patent Act, 1970?",
      options: {
        "A": "Computer programs",
        "B": "Scientific theories",
        "C": "Surgical procedures",
        "D": "All of the above",
      },
      correctAnswer: "D) All of the above",
    ),
    QuizQuestion(
      questionId: 9,
      level: 580,
      question: "What organization governs international filing and registration of intellectual property rights (IPR)?",
      options: {
        "A": "United Nations (UN)",
        "B": "World Trade Organization (WTO)",
        "C": "World Intellectual Property Organization (WIPO)",
        "D": "International Patent Classification (IPC)",
      },
      correctAnswer: "C) World Intellectual Property Organization (WIPO)",
    ),
    QuizQuestion(
      questionId: 10,
      level: 590,
      question: "Why is a 'Prior Art Search' important before filing a patent application?",
      options: {
        "A": "To determine if the invention is valuable",
        "B": "To check if someone else has already patented a similar invention",
        "C": "To advertise the invention to the public",
        "D": "To determine the industrial use of the invention",
      },
      correctAnswer: "B) To check if someone else has already patented a similar invention",
    ),
    QuizQuestion(
      questionId: 11,
      level: 600,
      question: "What is the process of filing a patent application called?",
      options: {
        "A": "Patent registration",
        "B": "Patent examination",
        "C": "Patent prosecution",
        "D": "Patent litigation",
      },
      correctAnswer: "C) Patent prosecution",
    ),
    QuizQuestion(
      questionId: 12,
      level: 610,
      question: "What is the term used for disclosing an invention to the public before filing a patent application?",
      options: {
        "A": "Patent disclosure",
        "B": "Patent abandonment",
        "C": "Patent infringement",
        "D": "Patent publication",
      },
      correctAnswer: "D) Patent publication",
    ),
    QuizQuestion(
      questionId: 13,
      level: 620,
      question: "In patent law, what does 'non-obviousness' mean?",
      options: {
        "A": "The invention is not understandable",
        "B": "The invention is not commercially viable",
        "C": "The invention is not obvious to someone skilled in the field",
        "D": "The invention is not valuable",
      },
      correctAnswer: "C) The invention is not obvious to someone skilled in the field",
    ),
    QuizQuestion(
      questionId: 14,
      level: 630,
      question: "What type of patent protects the ornamental design of an article of manufacture?",
      options: {
        "A": "Utility patent",
        "B": "Plant patent",
        "C": "Design patent",
        "D": "Provisional patent",
      },
      correctAnswer: "C) Design patent",
    ),
    QuizQuestion(
      questionId: 15,
      level: 640,
      question: "What is the grace period for filing a patent application after public disclosure of the invention in some countries?",
      options: {
        "A": "30 days",
        "B": "6 months",
        "C": "1 year",
        "D": "5 years",
      },
      correctAnswer: "C) 1 year",
    ),
    QuizQuestion(
      questionId: 16,
      level: 650,
      question: "What is the primary role of the United States Patent and Trademark Office (USPTO)?",
      options: {
        "A": "Enforcing patents",
        "B": "Issuing copyrights",
        "C": "Granting patents and trademarks",
        "D": "Regulating imports and exports",
      },
      correctAnswer: "C) Granting patents and trademarks",
    ),
    QuizQuestion(
      questionId: 17,
      level: 660,
      question: "What is the primary purpose of patent claims in a patent application?",
      options: {
        "A": "To describe the background of the invention",
        "B": "To identify potential infringers",
        "C": "To define the scope of protection for the invention",
        "D": "To disclose prior art references",
      },
      correctAnswer: "C) To define the scope of protection for the invention",
    ),
    QuizQuestion(
      questionId: 18,
      level: 670,
      question: "What is the maximum duration of a plant patent in the United States?",
      options: {
        "A": "5 years",
        "B": "10 years",
        "C": "15 years",
        "D": "20 years",
      },
      correctAnswer: "D) 20 years",
    ),
    QuizQuestion(
      questionId: 19,
      level: 680,
      question: "What is the term for the exclusive right to make, use, and sell an invention for a certain period?",
      options: {
        "A": "Intellectual property",
        "B": "Monopoly",
        "C": "License",
        "D": "Copyright",
      },
      correctAnswer: "B) Monopoly",
    ),
    QuizQuestion(
      questionId: 20,
      level: 690,
      question: "What is the primary benefit of obtaining a patent for an invention?",
      options: {
        "A": "The right to keep the invention a secret",
        "B": "The right to prevent others from using the invention",
        "C": "The right to freely share the invention with the public",
        "D": "The right to sell the invention without restrictions",
      },
      correctAnswer: "B) The right to prevent others from using the invention",
    ),
    QuizQuestion(
      questionId: 21,
      level: 700,
      question: "What is the primary role of the World Intellectual Property Organization (WIPO)?",
      options: {
        "A": "Enforcing patents",
        "B": "Promoting international trade",
        "C": "Fighting cybercrime",
        "D": "Administering intellectual property treaties",
      },
      correctAnswer: "D) Administering intellectual property treaties",
    ),
    QuizQuestion(
      questionId: 22,
      level: 710,
      question: "What is a patent examiner's role in the patent application process?",
      options: {
        "A": "Defending patent rights in court",
        "B": "Granting patents to all applicants",
        "C": "Reviewing patent applications and determining their validity",
        "D": "Marketing patented inventions",
      },
      correctAnswer: "C) Reviewing patent applications and determining their validity",
    ),
    QuizQuestion(
      questionId: 23,
      level: 720,
      question: "What is the term for the transfer of patent rights from one party to another?",
      options: {
        "A": "Patent filing",
        "B": "Patent disclosure",
        "C": "Patent assignment",
        "D": "Patent examination",
      },
      correctAnswer: "C) Patent assignment",
    ),
    QuizQuestion(
      questionId: 24,
      level: 730,
      question: "In the United States, what is the name of the federal agency responsible for granting patents?",
      options: {
        "A": "U.S. Copyright Office",
        "B": "U.S. Patent and Trademark Office (USPTO)",
        "C": "Federal Trade Commission (FTC)",
        "D": "Department of Justice (DOJ)",
      },
      correctAnswer: "B) U.S. Patent and Trademark Office (USPTO)",
    ),
    QuizQuestion(
      questionId: 25,
      level: 740,
      question: "What is the term for the process of challenging the validity of a patent in court?",
      options: {
        "A": "Patent application",
        "B": "Patent litigation",
        "C": "Patent disclosure",
        "D": "Patent assignment",
      },
      correctAnswer: "B) Patent litigation",
    ),
    QuizQuestion(
      questionId: 26,
      level: 750,
      question: "What is the difference between a utility patent and a design patent?",
      options: {
        "A": "Utility patents protect functional inventions, while design patents protect ornamental designs",
        "B": "Utility patents are granted for longer durations than design patents",
        "C": "Design patents are more difficult to obtain than utility patents",
        "D": "There is no difference; the terms are used interchangeably",
      },
      correctAnswer: "A) Utility patents protect functional inventions, while design patents protect ornamental designs",
    ),
    QuizQuestion(
      questionId: 27,
      level: 760,
      question: "What is the term for the unauthorized use, sale, or manufacture of a patented invention?",
      options: {
        "A": "Patent infringement",
        "B": "Patent prosecution",
        "C": "Patent disclosure",
        "D": "Patent abandonment",
      },
      correctAnswer: "A) Patent infringement",
    ),
    QuizQuestion(
      questionId: 28,
      level: 770,
      question: "What is the purpose of the International Patent Classification (IPC) system?",
      options: {
        "A": "To classify patent examiners",
        "B": "To classify inventions for patent offices worldwide",
        "C": "To determine patent filing fees",
        "D": "To regulate international trade",
      },
      correctAnswer: "B) To classify inventions for patent offices worldwide",
    ),
    QuizQuestion(
      questionId: 29,
      level: 780,
      question: "What is the term for a legal document that gives someone permission to make, use, or sell a patented invention?",
      options: {
        "A": "Patent application",
        "B": "Patent disclosure",
        "C": "Patent license",
        "D": "Patent grant",
      },
      correctAnswer: "C) Patent license",
    ),
    QuizQuestion(
      questionId: 30,
      level: 790,
      question: "What is the primary objective of patent offices when examining patent applications?",
      options: {
        "A": "To grant as many patents as possible",
        "B": "To promote innovation",
        "C": "To raise revenue for the government",
        "D": "To ensure the invention is non-obvious and novel",
      },
      correctAnswer: "D) To ensure the invention is non-obvious and novel",
    ),
    QuizQuestion(
      questionId: 31,
      level: 800,
      question: "What is the term for the exclusive right to make, use, and sell an invention for a certain period?",
      options: {
        "A": "Intellectual property",
        "B": "Monopoly",
        "C": "License",
        "D": "Copyright",
      },
      correctAnswer: "B) Monopoly",
    ),
    QuizQuestion(
      questionId: 32,
      level: 810,
      question: "What is the primary benefit of obtaining a patent for an invention?",
      options: {
        "A": "The right to keep the invention a secret",
        "B": "The right to prevent others from using the invention",
        "C": "The right to freely share the invention with the public",
        "D": "The right to sell the invention without restrictions",
      },
      correctAnswer: "B) The right to prevent others from using the invention",
    ),
    QuizQuestion(
      questionId: 33,
      level: 820,
      question: "What is the term for the transfer of patent rights from one party to another?",
      options: {
        "A": "Patent filing",
        "B": "Patent disclosure",
        "C": "Patent assignment",
        "D": "Patent examination",
      },
      correctAnswer: "C) Patent assignment",
    ),
    QuizQuestion(
      questionId: 34,
      level: 830,
      question: "In the United States, what is the name of the federal agency responsible for granting patents?",
      options: {
        "A": "U.S. Copyright Office",
        "B": "U.S. Patent and Trademark Office (USPTO)",
        "C": "Federal Trade Commission (FTC)",
        "D": "Department of Justice (DOJ)",
      },
      correctAnswer: "B) U.S. Patent and Trademark Office (USPTO)",
    ),
    QuizQuestion(
      questionId: 35,
      level: 840,
      question: "What is the term for the process of challenging the validity of a patent in court?",
      options: {
        "A": "Patent application",
        "B": "Patent litigation",
        "C": "Patent disclosure",
        "D": "Patent assignment",
      },
      correctAnswer: "B) Patent litigation",
    ),
    QuizQuestion(
      questionId: 36,
      level: 850,
      question: "What is the difference between a utility patent and a design patent?",
      options: {
        "A": "Utility patents protect functional inventions, while design patents protect ornamental designs",
        "B": "Utility patents are granted for longer durations than design patents",
        "C": "Design patents are more difficult to obtain than utility patents",
        "D": "There is no difference; the terms are used interchangeably",
      },
      correctAnswer: "A) Utility patents protect functional inventions, while design patents protect ornamental designs",
    ),
    QuizQuestion(
      questionId: 37,
      level: 860,
      question: "What is the term for the unauthorized use, sale, or manufacture of a patented invention?",
      options: {
        "A": "Patent infringement",
        "B": "Patent prosecution",
        "C": "Patent disclosure",
        "D": "Patent abandonment",
      },
      correctAnswer: "A) Patent infringement",
    ),
    QuizQuestion(
      questionId: 38,
      level: 870,
      question: "What is the purpose of the International Patent Classification (IPC) system?",
      options: {
        "A": "To classify patent examiners",
        "B": "To classify inventions for patent offices worldwide",
        "C": "To determine patent filing fees",
        "D": "To regulate international trade",
      },
      correctAnswer: "B) To classify inventions for patent offices worldwide",
    ),
    QuizQuestion(
      questionId: 39,
      level: 880,
      question: "What is the term for a legal document that gives someone permission to make, use, or sell a patented invention?",
      options: {
        "A": "Patent application",
        "B": "Patent disclosure",
        "C": "Patent license",
        "D": "Patent grant",
      },
      correctAnswer: "C) Patent license",
    ),
    QuizQuestion(
      questionId: 40,
      level: 890,
      question: "What is the primary objective of patent offices when examining patent applications?",
      options: {
        "A": "To grant as many patents as possible",
        "B": "To promote innovation",
        "C": "To raise revenue for the government",
        "D": "To ensure the invention is non-obvious and novel",
      },
      correctAnswer: "D) To ensure the invention is non-obvious and novel",
    ),
    QuizQuestion(
      questionId: 41,
      level: 900,
      question: "What is the term for the process of filing a patent application in multiple countries simultaneously?",
      options: {
        "A": "Patent examination",
        "B": "International patent filing",
        "C": "Patent maintenance",
        "D": "Patent licensing",
      },
      correctAnswer: "B) International patent filing",
    ),
    QuizQuestion(
      questionId: 42,
      level: 910,
      question: "What is a provisional patent application?",
      options: {
        "A": "A type of design patent",
        "B": "A temporary patent that lasts for one year",
        "C": "A patent application that requires a working prototype",
        "D": "A patent application that does not require formal claims and declarations",
      },
      correctAnswer: "D) A patent application that does not require formal claims and declarations",
    ),
    QuizQuestion(
      questionId: 43,
      level: 920,
      question: "What is the term for an exclusive right granted to the creator of an original work, such as a book or song?",
      options: {
        "A": "Patent",
        "B": "Trademark",
        "C": "Copyright",
        "D": "Trade secret",
      },
      correctAnswer: "C) Copyright",
    ),
    QuizQuestion(
      questionId: 44,
      level: 930,
      question: "What is the primary purpose of a trademark?",
      options: {
        "A": "To protect inventions",
        "B": "To prevent others from using a company's brand identity",
        "C": "To regulate international trade",
        "D": "To grant exclusive rights to artistic works",
      },
      correctAnswer: "B) To prevent others from using a company's brand identity",
    ),
    QuizQuestion(
      questionId: 45,
      level: 940,
      question: "What is the term for the process of registering a trademark to protect it legally?",
      options: {
        "A": "Trademark infringement",
        "B": "Trademark prosecution",
        "C": "Trademark abandonment",
        "D": "Trademark dilution",
      },
      correctAnswer: "B) Trademark prosecution",
    ),
    QuizQuestion(
      questionId: 46,
      level: 950,
      question: "What is the duration of trademark protection in the United States?",
      options: {
        "A": "5 years, renewable indefinitely",
        "B": "10 years, renewable once",
        "C": "20 years, non-renewable",
        "D": "Lifetime of the trademark owner",
      },
      correctAnswer: "A) 5 years, renewable indefinitely",
    ),
    QuizQuestion(
      questionId: 47,
      level: 960,
      question: "What is the primary function of the Lanham Act in the United States?",
      options: {
        "A": "To regulate patents",
        "B": "To promote international trade",
        "C": "To protect trademarks",
        "D": "To enforce copyright laws",
      },
      correctAnswer: "C) To protect trademarks",
    ),
    QuizQuestion(
      questionId: 48,
      level: 970,
      question: "What is a trade secret?",
      options: {
        "A": "A type of trademark",
        "B": "A confidential business practice or formula",
        "C": "A publicly disclosed invention",
        "D": "A patented invention",
      },
      correctAnswer: "B) A confidential business practice or formula",
    ),
    QuizQuestion(
      questionId: 49,
      level: 980,
      question: "What is the term for the unlawful copying or imitation of a product or brand?",
      options: {
        "A": "Copyright infringement",
        "B": "Patent infringement",
        "C": "Trademark infringement",
        "D": "Trade secret infringement",
      },
      correctAnswer: "C) Trademark infringement",
    ),
    QuizQuestion(
      questionId: 50,
      level: 990,
      question: "What is the primary goal of intellectual property law?",
      options: {
        "A": "To stifle innovation",
        "B": "To limit access to knowledge and ideas",
        "C": "To promote creativity and innovation while protecting creators' rights",
        "D": "To grant exclusive rights to large corporations",
      },
      correctAnswer: "C) To promote creativity and innovation while protecting creators' rights",
    ),
    QuizQuestion(
      questionId: 51,
      level: 1000,
      question: "In the context of intellectual property, what does fair use refer to?",
      options: {
        "A": "The use of copyrighted material without permission for non-commercial purposes",
        "B": "The use of patented inventions without permission",
        "C": "The use of trade secrets in a legal dispute",
        "D": "The use of trademarks without attribution",
      },
      correctAnswer: "A) The use of copyrighted material without permission for non-commercial purposes",
    ),
    QuizQuestion(
      questionId: 52,
      level: 1010,
      question: "What is the purpose of the Berne Convention for the Protection of Literary and Artistic Works?",
      options: {
        "A": "To regulate patents worldwide",
        "B": "To establish international copyright standards",
        "C": "To grant exclusive rights to trademarks",
        "D": "To protect trade secrets",
      },
      correctAnswer: "B) To establish international copyright standards",
    ),
    QuizQuestion(
      questionId: 53,
      level: 1020,
      question: "What is the term for the unauthorized use or reproduction of copyrighted material for profit?",
      options: {
        "A": "Copyright infringement",
        "B": "Copyright abandonment",
        "C": "Copyright renewal",
        "D": "Copyright licensing",
      },
      correctAnswer: "A) Copyright infringement",
    ),
    QuizQuestion(
      questionId: 54,
      level: 1030,
      question: "What is the main purpose of the WIPO Copyright Treaty?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international copyright standards for digital content",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international copyright standards for digital content",
    ),
    QuizQuestion(
      questionId: 55,
      level: 1040,
      question: "What is the term for the act of intentionally providing false information on a trademark application?",
      options: {
        "A": "Trademark fraud",
        "B": "Trademark dilution",
        "C": "Trademark prosecution",
        "D": "Trademark assignment",
      },
      correctAnswer: "A) Trademark fraud",
    ),
    QuizQuestion(
      questionId: 56,
      level: 1050,
      question: "What is the difference between a trademark and a service mark?",
      options: {
        "A": "A trademark is used for products, while a service mark is used for services",
        "B": "A trademark is used in international trade, while a service mark is used domestically",
        "C": "There is no difference; the terms are used interchangeably",
        "D": "A service mark is used for products, while a trademark is used for services",
      },
      correctAnswer: "A) A trademark is used for products, while a service mark is used for services",
    ),
    QuizQuestion(
      questionId: 57,
      level: 1060,
      question: "What is the primary objective of patent offices when examining patent applications?",
      options: {
        "A": "To grant as many patents as possible",
        "B": "To promote innovation",
        "C": "To raise revenue for the government",
        "D": "To ensure the invention is non-obvious and novel",
      },
      correctAnswer: "D) To ensure the invention is non-obvious and novel",
    ),
    QuizQuestion(
      questionId: 58,
      level: 1070,
      question: "What is the term for a legal document that gives someone permission to make, use, or sell a patented invention?",
      options: {
        "A": "Patent application",
        "B": "Patent disclosure",
        "C": "Patent license",
        "D": "Patent grant",
      },
      correctAnswer: "C) Patent license",
    ),
    QuizQuestion(
      questionId: 59,
      level: 1080,
      question: "What is the difference between a utility patent and a design patent?",
      options: {
        "A": "Utility patents protect functional inventions, while design patents protect ornamental designs",
        "B": "Utility patents are granted for longer durations than design patents",
        "C": "Design patents are more difficult to obtain than utility patents",
        "D": "There is no difference; the terms are used interchangeably",
      },
      correctAnswer: "A) Utility patents protect functional inventions, while design patents protect ornamental designs",
    ),
    QuizQuestion(
      questionId: 60,
      level: 1090,
      question: "What is the term for the unauthorized use, sale, or manufacture of a patented invention?",
      options: {
        "A": "Patent infringement",
        "B": "Patent prosecution",
        "C": "Patent disclosure",
        "D": "Patent abandonment",
      },
      correctAnswer: "A) Patent infringement",
    ),
    QuizQuestion(
      questionId: 61,
      level: 1100,
      question: "What is the primary purpose of trade dress protection?",
      options: {
        "A": "To protect the appearance and packaging of products",
        "B": "To regulate international trade",
        "C": "To grant exclusive rights to inventions",
        "D": "To enforce copyright laws",
      },
      correctAnswer: "A) To protect the appearance and packaging of products",
    ),
    QuizQuestion(
      questionId: 62,
      level: 1110,
      question: "What is the term for the process of registering a design patent to protect it legally?",
      options: {
        "A": "Design patent prosecution",
        "B": "Design patent infringement",
        "C": "Design patent abandonment",
        "D": "Design patent dilution",
      },
      correctAnswer: "A) Design patent prosecution",
    ),
    QuizQuestion(
      questionId: 63,
      level: 1120,
      question: "Which international treaty establishes minimum standards for the protection of intellectual property rights?",
      options: {
        "A": "TRIPS Agreement",
        "B": "Paris Convention",
        "C": "Hague Agreement",
        "D": "Madrid Protocol",
      },
      correctAnswer: "A) TRIPS Agreement",
    ),
    QuizQuestion(
      questionId: 64,
      level: 1130,
      question: "What is the purpose of the Hague Agreement Concerning the International Deposit of Industrial Designs?",
      options: {
        "A": "To protect literary and artistic works",
        "B": "To establish international copyright standards",
        "C": "To facilitate the international registration of industrial designs",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To facilitate the international registration of industrial designs",
    ),
    QuizQuestion(
      questionId: 65,
      level: 1140,
      question: "What is the term for the act of intentionally providing false information on a trademark application?",
      options: {
        "A": "Trademark fraud",
        "B": "Trademark dilution",
        "C": "Trademark prosecution",
        "D": "Trademark assignment",
      },
      correctAnswer: "A) Trademark fraud",
    ),
    QuizQuestion(
      questionId: 66,
      level: 1150,
      question: "What is the difference between a trademark and a service mark?",
      options: {
        "A": "A trademark is used for products, while a service mark is used for services",
        "B": "A trademark is used in international trade, while a service mark is used domestically",
        "C": "There is no difference; the terms are used interchangeably",
        "D": "A service mark is used for products, while a trademark is used for services",
      },
      correctAnswer: "A) A trademark is used for products, while a service mark is used for services",
    ),
    QuizQuestion(
      questionId: 67,
      level: 1160,
      question: "What is the primary objective of patent offices when examining patent applications?",
      options: {
        "A": "To grant as many patents as possible",
        "B": "To promote innovation",
        "C": "To raise revenue for the government",
        "D": "To ensure the invention is non-obvious and novel",
      },
      correctAnswer: "D) To ensure the invention is non-obvious and novel",
    ),
    QuizQuestion(
      questionId: 68,
      level: 1170,
      question: "What is the term for a legal document that gives someone permission to make, use, or sell a patented invention?",
      options: {
        "A": "Patent application",
        "B": "Patent disclosure",
        "C": "Patent license",
        "D": "Patent grant",
      },
      correctAnswer: "C) Patent license",
    ),
    QuizQuestion(
      questionId: 69,
      level: 1180,
      question: "What is the difference between a utility patent and a design patent?",
      options: {
        "A": "Utility patents protect functional inventions, while design patents protect ornamental designs",
        "B": "Utility patents are granted for longer durations than design patents",
        "C": "Design patents are more difficult to obtain than utility patents",
        "D": "There is no difference; the terms are used interchangeably",
      },
      correctAnswer: "A) Utility patents protect functional inventions, while design patents protect ornamental designs",
    ),
    QuizQuestion(
      questionId: 70,
      level: 1190,
      question: "What is the term for the unauthorized use, sale, or manufacture of a patented invention?",
      options: {
        "A": "Patent infringement",
        "B": "Patent prosecution",
        "C": "Patent disclosure",
        "D": "Patent abandonment",
      },
      correctAnswer: "A) Patent infringement",
    ),
    QuizQuestion(
      questionId: 71,
      level: 1200,
      question: "What is the term for the practice of filing multiple patent applications for the same invention in different countries?",
      options: {
        "A": "Patent infringement",
        "B": "Patent renewal",
        "C": "Patent prosecution",
        "D": "Patent portfolio",
      },
      correctAnswer: "D) Patent portfolio",
    ),
    QuizQuestion(
      questionId: 72,
      level: 1210,
      question: "What is the term for the unauthorized use of someone else's trade secret?",
      options: {
        "A": "Trade secret infringement",
        "B": "Trade secret misappropriation",
        "C": "Trade secret dilution",
        "D": "Trade secret disclosure",
      },
      correctAnswer: "B) Trade secret misappropriation",
    ),
    QuizQuestion(
      questionId: 73,
      level: 1220,
      question: "What is the purpose of the WIPO Copyright Treaty?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international copyright standards for digital content",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international copyright standards for digital content",
    ),
    QuizQuestion(
      questionId: 74,
      level: 1230,
      question: "What is the term for the act of using a registered trademark without the owner's permission?",
      options: {
        "A": "Trademark fraud",
        "B": "Trademark infringement",
        "C": "Trademark prosecution",
        "D": "Trademark assignment",
      },
      correctAnswer: "B) Trademark infringement",
    ),
    QuizQuestion(
      questionId: 75,
      level: 1240,
      question: "Which international organization administers the Madrid Protocol for the international registration of trademarks?",
      options: {
        "A": "WIPO",
        "B": "WTO",
        "C": "UN",
        "D": "USPTO",
      },
      correctAnswer: "A) WIPO",
    ),

    QuizQuestion(
      questionId: 76,
      level: 1250,
      question: "What is the term for a distinctive sign used to identify goods or services in the marketplace?",
      options: {
        "A": "Patent",
        "B": "Trademark",
        "C": "Copyright",
        "D": "Trade secret",
      },
      correctAnswer: "B) Trademark",
    ),
    QuizQuestion(
      questionId: 77,
      level: 1260,
      question: "What is the primary objective of the Paris Convention for the Protection of Industrial Property?",
      options: {
        "A": "To establish international copyright standards",
        "B": "To promote innovation",
        "C": "To raise revenue for the government",
        "D": "To provide a framework for the protection of intellectual property rights",
      },
      correctAnswer: "D) To provide a framework for the protection of intellectual property rights",
    ),
    QuizQuestion(
      questionId: 78,
      level: 1270,
      question: "What is the purpose of the Berne Convention for the Protection of Literary and Artistic Works?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international copyright standards for literary and artistic works",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international copyright standards for literary and artistic works",
    ),
    QuizQuestion(
      questionId: 79,
      level: 1280,
      question: "What is the term for the act of revealing a trade secret without authorization?",
      options: {
        "A": "Trade secret fraud",
        "B": "Trade secret infringement",
        "C": "Trade secret disclosure",
        "D": "Trade secret abandonment",
      },
      correctAnswer: "C) Trade secret disclosure",
    ),
    QuizQuestion(
      questionId: 80,
      level: 1290,
      question: "What is the primary purpose of the Universal Copyright Convention?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international copyright standards",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international copyright standards",
    ),
    QuizQuestion(
      questionId: 81,
      level: 1300,
      question: "What is the term for the act of copying or reproducing someone else's work without permission?",
      options: {
        "A": "Patent infringement",
        "B": "Trademark infringement",
        "C": "Copyright infringement",
        "D": "Trade secret infringement",
      },
      correctAnswer: "C) Copyright infringement",
    ),
    QuizQuestion(
      questionId: 82,
      level: 1310,
      question: "What is the duration of copyright protection for most original works in the United States?",
      options: {
        "A": "10 years",
        "B": "25 years",
        "C": "50 years",
        "D": "The life of the author plus 70 years",
      },
      correctAnswer: "D) The life of the author plus 70 years",
    ),
    QuizQuestion(
      questionId: 83,
      level: 1320,
      question: "Which international organization administers the Hague Agreement for the international registration of industrial designs?",
      options: {
        "A": "WIPO",
        "B": "WTO",
        "C": "UN",
        "D": "USPTO",
      },
      correctAnswer: "A) WIPO",
    ),
    QuizQuestion(
      questionId: 84,
      level: 1330,
      question: "What is the term for a legal action to stop someone from using or selling a patented invention?",
      options: {
        "A": "Patent litigation",
        "B": "Patent infringement",
        "C": "Patent enforcement",
        "D": "Patent injunction",
      },
      correctAnswer: "D) Patent injunction",
    ),
    QuizQuestion(
      questionId: 85,
      level: 1340,
      question: "Which international organization administers the Patent Cooperation Treaty (PCT) for international patent applications?",
      options: {
        "A": "WIPO",
        "B": "WTO",
        "C": "UN",
        "D": "USPTO",
      },
      correctAnswer: "A) WIPO",
    ),
    QuizQuestion(
      questionId: 86,
      level: 1350,
      question: "What is the term for the act of using a trade secret that was obtained through improper means?",
      options: {
        "A": "Trade secret fraud",
        "B": "Trade secret infringement",
        "C": "Trade secret misappropriation",
        "D": "Trade secret disclosure",
      },
      correctAnswer: "C) Trade secret misappropriation",
    ),
    QuizQuestion(
      questionId: 87,
      level: 1360,
      question: "What is the purpose of the Budapest Treaty on the International Recognition of the Deposit of Microorganisms for the Purposes of Patent Procedure?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To facilitate the international deposit of microorganisms for patent purposes",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To facilitate the international deposit of microorganisms for patent purposes",
    ),
    QuizQuestion(
      questionId: 88,
      level: 1370,
      question: "What is the term for the act of using a domain name that is confusingly similar to a famous trademark?",
      options: {
        "A": "Domain name infringement",
        "B": "Domain name hijacking",
        "C": "Domain name registration",
        "D": "Domain name dilution",
      },
      correctAnswer: "B) Domain name hijacking",
    ),
    QuizQuestion(
      questionId: 89,
      level: 1380,
      question: "What is the term for a legal document that transfers ownership of a patent or trademark from one party to another?",
      options: {
        "A": "Patent application",
        "B": "Patent disclosure",
        "C": "Patent assignment",
        "D": "Patent grant",
      },
      correctAnswer: "C) Patent assignment",
    ),
    QuizQuestion(
      questionId: 90,
      level: 1390,
      question: "What is the term for the act of intentionally making false or misleading statements about a competitor's products or services?",
      options: {
        "A": "Patent fraud",
        "B": "Trademark fraud",
        "C": "Trade secret fraud",
        "D": "False advertising",
      },
      correctAnswer: "D) False advertising",
    ),
    QuizQuestion(
      questionId: 91,
      level: 1400,
      question: "What is the primary purpose of the Madrid Protocol for the international registration of trademarks?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To facilitate the international registration of trademarks",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To facilitate the international registration of trademarks",
    ),
    QuizQuestion(
      questionId: 92,
      level: 1410,
      question: "What is the term for a legal doctrine that allows limited use of copyrighted material without permission, such as for criticism, commentary, or news reporting?",
      options: {
        "A": "Fair use",
        "B": "Public domain",
        "C": "Copyright exception",
        "D": "Copyright waiver",
      },
      correctAnswer: "A) Fair use",
    ),
    QuizQuestion(
      questionId: 93,
      level: 1420,
      question: "What is the term for a legal action to stop someone from using or selling a trademark that is confusingly similar to another trademark?",
      options: {
        "A": "Trademark litigation",
        "B": "Trademark infringement",
        "C": "Trademark enforcement",
        "D": "Trademark injunction",
      },
      correctAnswer: "D) Trademark injunction",
    ),
    QuizQuestion(
      questionId: 94,
      level: 1430,
      question: "What is the purpose of the Nice Agreement Concerning the International Classification of Goods and Services for the Purposes of the Registration of Marks?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international classification standards for trademark registration",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international classification standards for trademark registration",
    ),
    QuizQuestion(
      questionId: 95,
      level: 1440,
      question: "What is the term for a legal action to stop someone from using or selling a patented invention?",
      options: {
        "A": "Patent litigation",
        "B": "Patent infringement",
        "C": "Patent enforcement",
        "D": "Patent injunction",
      },
      correctAnswer: "D) Patent injunction",
    ),
    QuizQuestion(
      questionId: 96,
      level: 1450,
      question: "What is the term for the act of copying or imitating the distinctive features of a product or packaging to mislead consumers?",
      options: {
        "A": "Trademark infringement",
        "B": "Product copying",
        "C": "Trade dress infringement",
        "D": "Product counterfeiting",
      },
      correctAnswer: "C) Trade dress infringement",
    ),
    QuizQuestion(
      questionId: 97,
      level: 1460,
      question: "What is the purpose of the Singapore Treaty on the Law of Trademarks?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international standards for trademark registration and protection",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international standards for trademark registration and protection",
    ),
    QuizQuestion(
      questionId: 98,
      level: 1470,
      question: "What is the term for the act of using someone else's trademark to promote one's own product or service without permission?",
      options: {
        "A": "Trademark infringement",
        "B": "Trademark dilution",
        "C": "Trademark counterfeiting",
        "D": "Trademark promotion",
      },
      correctAnswer: "A) Trademark infringement",
    ),
    QuizQuestion(
      questionId: 99,
      level: 1480,
      question: "What is the term for the act of intentionally disclosing a trade secret to harm the owner of the trade secret?",
      options: {
        "A": "Trade secret misappropriation",
        "B": "Trade secret disclosure",
        "C": "Trade secret infringement",
        "D": "Trade secret abandonment",
      },
      correctAnswer: "B) Trade secret disclosure",
    ),
    QuizQuestion(
      questionId: 100,
      level: 1490,
      question: "What is the primary purpose of the Agreement on Trade-Related Aspects of Intellectual Property Rights (TRIPS Agreement)?",
      options: {
        "A": "To regulate patents",
        "B": "To protect trade secrets",
        "C": "To establish international standards for the protection of intellectual property rights",
        "D": "To enforce trademark laws",
      },
      correctAnswer: "C) To establish international standards for the protection of intellectual property rights",
    ),
  ];

  int currentQuestionIndex = 0;
  int totalScore = 0;
  int secondsLeft = 30;
  List<Map<String, dynamic>> userResponses = [];
  int currentLevel = 0;
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
    selectRandomQuestions(10);
  }

  void startTimer() {
    Timer.periodic(Duration(seconds: 1), (Timer timer) {
      if (secondsLeft == 0) {
        // Time's up, move to the next question.
        nextQuestion();
      } else {
        setState(() {
          secondsLeft--;
        });
      }
    });
  }
  void selectRandomQuestions(int numberOfQuestions) {
    final random = Random();
    final List<int> selectedIndices = [];

    while (selectedIndices.length < numberOfQuestions) {
      final randomIndex = random.nextInt(quizQuestions.length);
      if (!selectedIndices.contains(randomIndex)) {
        selectedIndices.add(randomIndex);
      }
    }

    setState(() {
      currentQuestionIndex = 0;
      secondsLeft = 30;
      quizQuestions.shuffle(); // Shuffle the questions.
      quizQuestions = selectedIndices.map((index) => quizQuestions[index]).toList();
      currentLevel = quizQuestions[currentQuestionIndex].level; // Set the level of the first question.
    });
  }

  void nextQuestion() {
    int questionRating = quizQuestions[currentQuestionIndex].level +
        (30 - secondsLeft) ~/ 2;
    totalScore += questionRating;

    userResponses.add({
      'questionId': quizQuestions[currentQuestionIndex].questionId,
      'userAnswer': '',
      'isCorrect': false,
      'timeTaken': 30 - secondsLeft,
      'correctAnswer': quizQuestions[currentQuestionIndex].correctAnswer,
    });
    currentQuestionIndex++;

    if (currentQuestionIndex == quizQuestions.length) {
      // Quiz completed, show the final results.
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Quiz Completed"),
            // content: Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     Text("Your Total Score: $totalScore"),
            //     Text("Your Final Level: $currentLevel"),
            //     SizedBox(height: 20),
            //     Text("Detailed Results:"),
            //     SizedBox(height: 10),
            //     for (var response in userResponses)
            //       ListTile(
            //         title: Text(
            //           "Question ${response['questionId']}",
            //           style: TextStyle(
            //             fontWeight: response['isCorrect']
            //                 ? FontWeight.bold
            //                 : FontWeight.normal,
            //           ),
            //         ),
            //         subtitle: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("Answer: ${response['userAnswer']}"),
            //             Text("Time Taken: ${response['timeTaken']} seconds"),
            //           ],
            //         ),
            //       ),
            //   ],
            // ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Close"),
              ),
            ],
          );
        },
      );
    } else {
      // Load the next question and reset the timer.
      setState(() {
        currentLevel = quizQuestions[currentQuestionIndex].level;
        secondsLeft = 30;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    if (currentQuestionIndex < quizQuestions.length) {
      QuizQuestion currentQuestion = quizQuestions[currentQuestionIndex];
      return Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(16),
                children: [
                  Text(
                    "Question ${currentQuestionIndex + 1}",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "Level: $currentLevel", // Display the user's level.
                    style: TextStyle(fontSize: 16),
                  ),
                  Card(
                    margin: EdgeInsets.all(16.0),
                    elevation: 4.0,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            currentQuestion.question,
                            style: TextStyle(fontSize: 24),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 16), // Added gap between question and options
                          Text(
                            "Time Left: $secondsLeft seconds", // Display the remaining time.
                            style: TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Card(
              margin: EdgeInsets.only(left: 16.0, top: 16.0, right: 16.0, bottom: 35.0),
              elevation: 10.0,
              child: FractionallySizedBox(
                widthFactor: 0.8, // Set the width to 80% of the available space.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: currentQuestion.options.entries.map((entry) {
                    String option = entry.key;
                    String text = entry.value;
                    bool isUserAnswered = userResponses.isNotEmpty && userResponses.last['userAnswer'] == "$option. $text";
                    bool isCorrect = text == currentQuestion.correctAnswer;

                    Color cardColor = isUserAnswered
                        ? (isCorrect ? Colors.green : Colors.black)
                        : Colors.white;

                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          // Store the user's answer here and check correctness.
                          userResponses.add({
                            'questionId': currentQuestion.questionId,
                            'userAnswer': "$option. $text",
                            'correctAnswer': currentQuestion.correctAnswer,
                            'isCorrect': isCorrect,
                            'timeTaken': 30 - secondsLeft,
                          });
                          nextQuestion();
                        },
                        style: ElevatedButton.styleFrom(
                          primary: cardColor,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "$option. $text",
                            style: TextStyle(
                              fontSize: 20,
                              color: isUserAnswered ? Colors.white : Colors.black,
                            ),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ],
        ),
      );
      } else {
        // Quiz completed, show the final score and analysis.
      return Scaffold(
        appBar: AppBar(
          title: Text("Quiz Time"),
          backgroundColor: Colors.deepPurple, // Set the app bar color to deep purple
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.pink.shade100], // Use a gradient background from white to light pink
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Quiz Completed",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Your Total Score: $totalScore",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Your Final Level: $currentLevel",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  "Detailed Results:",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: userResponses.length,
                    itemBuilder: (context, index) {
                      var response = userResponses[index];
                      bool isCorrect = response['isCorrect'];
                      Color textColor = isCorrect ? Colors.green : Colors.black;

                      return Card(
                        elevation: 4, // Add a card elevation for a material-like effect
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: ListTile(
                          title: Text(
                            "Question ${response['questionId']}",
                            style: TextStyle(
                              fontWeight: isCorrect ? FontWeight.bold : FontWeight.normal,
                              color: textColor,
                            ),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Your Answer: ${response['userAnswer']}",
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              Text(
                                "Correct Answer: ${response['correctAnswer']}",
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                              Text(
                                "Time Taken: ${response['timeTaken']} seconds",
                                style: TextStyle(
                                  color: textColor,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.purple, // Set the button color to deep purple
                  ),
                  child: Text(
                    "Close",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}