import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List question;
  final int index;
  final Function hodisa;
  const Quiz(
      {Key? key,
      required this.question,
      required this.index,
      required this.hodisa})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(question[index]['questionText']),
        ...(question[index]['answer']).map((answer) {
          return Answer(
            hodisa: ()=>hodisa(answer['score']),
            answer: answer['text'].toString(),
          );
        })
      ],
    );
  }
}
