// class Question {
//   String questiontext; // Use 'late' keyword for non-nullable fields
//   bool questionanswer;
//
//   Question({required String q, required bool a})
//       : questiontext = q,
//         questionanswer = a;
// }
class Question {
  late String questionText;
  late bool questionAnswer;

  Question(String q, bool a) {
    questionText = q;
    questionAnswer = a;
  }
}
