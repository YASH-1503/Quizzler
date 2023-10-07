// import 'package:flutter/material.dart';
// import 'quiz_brain.dart';
// import 'package:rflutter_alert/rflutter_alert.dart';
//
// Quizzbrain quizzbrain = Quizzbrain();
//
// void main() => runApp(Quizzler());
//
// class Quizzler extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false, // Add this line
//
//       home: Scaffold(
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Padding(
//               padding: EdgeInsets.symmetric(horizontal: 10), child: QuizPage()),
//         ),
//       ),
//     );
//   }
// }
//
// class QuizPage extends StatefulWidget {
//   @override
//   State<QuizPage> createState() => _QuizPageState();
// }
//
// class _QuizPageState extends State<QuizPage> {
//   List<Icon> scorekeeper = [];
//
//   // List<String> question = ['is c++ is easy', 'json is accused', 'all are good'];
//   // List<bool> answer = [false, true, true];
//   // List<Question> questionbank = [
//   //   Question(q: 'is c++ is easy', a: false),
//   //   Question(q: 'json is accused', a: true),
//   //   Question(q: "systum is working", a: true)
//   // ];
//
//   void checkanswer(bool userpickedanswer) {
//     bool correctanswer = quizzbrain.getanswer();
//     setState(() {
//       if (quizzbrain.isFinished() == true) {
//         //TODO Step 4 Part A - show an alert using rFlutter_alert,
//
//         //This is the code for the basic alert from the docs for rFlutter Alert:
//         //Alert(context: context, title: "RFLUTTER", desc: "Flutter is awesome.").show();
//
//         //Modified for our purposes:
//         Alert(
//           context: context,
//           title: 'Finished!',
//           desc: 'You\'ve reached the end of the quiz.',
//         ).show();
//
//         //TODO Step 4 Part C - reset the questionNumber,
//         quizzbrain.reset();
//
//         //TODO Step 4 Part D - empty out the scoreKeeper.
//         scorekeeper = [];
//       } else {
//         if (userpickedanswer == correctanswer) {
//           print("all good");
//           scorekeeper.add(
//             Icon(
//               Icons.check,
//               color: Colors.greenAccent,
//             ),
//           );
//         } else {
//           print("not good");
//           scorekeeper.add(
//             Icon(
//               Icons.close,
//               color: Colors.redAccent,
//             ),
//           );
//         }
//         quizzbrain.nextquestion();
//       } // Remove the extra closing parenthesis here
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: <Widget>[
//         Expanded(
//           flex: 5,
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Center(
//               child: Text(
//                 quizzbrain.getquestion(),
//                 // "here you write questionon",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.all(5),
//             child: TextButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
//               child: Text(
//                 "True",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//               onPressed: () {
//                 checkanswer(false);
//               },
//             ),
//           ),
//         ),
//         Expanded(
//           child: Padding(
//             padding: EdgeInsets.all(5),
//             child: TextButton(
//               style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
//               child: Text(
//                 "False",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//               onPressed: () {
//                 checkanswer(false);
//               },
//             ),
//           ),
//         ),
//         Row(
//           children: scorekeeper,
//         )
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';

import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Add this line

      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> scoreKeeper = [];

  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = quizBrain.getCorrectAnswer();

    setState(() {
      if (quizBrain.isFinished() == true) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.reset();

        scoreKeeper = [];
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.check,
            color: Colors.green,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.close,
            color: Colors.red,
          ));
        }
        quizBrain.nextQuestion();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.greenAccent),
              child: Text(
                "True",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(5),
            child: TextButton(
              style: TextButton.styleFrom(backgroundColor: Colors.redAccent),
              child: Text(
                "False",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
