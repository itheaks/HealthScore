const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;

const quizQuestions = [
    {
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
    },
    {
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
    },
    {
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
    },
    {
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
    },
    {
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
    }
  ];

app.get('/api/quiz', (req, res) => {
  res.json(quizQuestions);
});

app.get('/api/quiz/:questionId', (req, res) => {
  const questionId = parseInt(req.params.questionId);
  const question = quizQuestions.find((q) => q.questionId === questionId);

  if (!question) {
    return res.status(404).json({ error: 'Question not found' });
  }

  res.json(question);
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
