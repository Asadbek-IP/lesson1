import 'package:flutter/material.dart';
import 'package:lesson1/main.dart';

class Question extends StatelessWidget {
  String? question;
  Question(this.question, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        question!,
        style: const TextStyle(fontSize: 20,),
        textAlign: TextAlign.center,
      ),
    );
  }
}

