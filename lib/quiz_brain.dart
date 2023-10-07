// import 'question.dart';
//
// class Quizzbrain {
//   int _questionnumber = 0;
//
//   final List<Question> _questionbank = [
//     Question(q: "Is the system working?", a: false),
//     Question(q: "Is the computer turned on?", a: false),
//     Question(q: "Did you receive the email I sent?", a: false),
//     Question(q: "Is the internet connection stable?", a: false),
//     Question(q: "Have you completed the assignment?", a: true),
//     Question(
//         q: "Has there been a major cybersecurity breach reported in the last week?",
//         a: true),
//     Question(
//         q: "Is Tesla's latest electric car model receiving positive reviews?",
//         a: true),
//     Question(
//         q: "Did a prominent tech company unveil new AI technology at a recent conference?",
//         a: true),
//     Question(
//         q: "Has there been any significant progress in quantum computing research recently?",
//         a: true),
//     Question(
//         q: "Is the speed of light faster than the speed of sound?", a: true),
//     Question(
//         q: "Is English the most widely spoken language in the world?", a: true),
//   ];
//
//   void nextquestion() {
//     if (_questionnumber < _questionbank.length - 1) {
//       _questionnumber++;
//     }
//   }
//
//   String getquestion() {
//     return _questionbank[_questionnumber].questiontext;
//   }
//
//   bool getanswer() {
//     return _questionbank[_questionnumber].questionanswer;
//   }
//
//   bool isFinished() {
//     if (_questionnumber >= _questionbank.length - 1) {
//       //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
//
//       print('Now returning true');
//       return true;
//     } else {
//       return false;
//     }
//   }
//
//   //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
//   void reset() {
//     _questionnumber = 0;
//   }
// }
import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Some cats are actually allergic to humans', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
    Question('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    Question('It is illegal to pee in the Ocean in Portugal.', true),
    Question(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    Question(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    Question(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    Question(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    Question('Google was originally called \"Backrub\".', true),
    Question(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    Question(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //TODO: Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      //TODO: Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.

      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  //TODO: Step 4 part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
