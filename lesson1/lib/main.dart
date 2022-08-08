import 'package:flutter/material.dart';
import 'package:lesson1/quiz.dart';
import 'package:lesson1/result.dart';

void main() {
  runApp(MeningDasturim());
}

class MeningDasturim extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MeningDasturimState();
  }
}

class _MeningDasturimState extends State {
  int _index = 0;
  int jamiAchko =0;
  List savollar = const [
    {
      'questionText': "Sizning sevimli rangingiz?",
      'answer': [
        {'text': "Oq", "score": 5},
        {'text': "Qora", "score": 4},
        {'text': "Yashil", "score": 5},
        {'text': "Qizil", "score": 1}
      ]
    },
    {
      'questionText': "Sizning sevimli hayvoningiz?",
      'answer': [
        {'text': "Mushuk", "score": 5},
        {'text': "It", "score": 3},
        {'text': "Ot", "score": 4},
        {'text': "Sigir", "score": 4}
      ]
    },
    {
      'questionText': "Sizning sevimli ustozingiz?",
      'answer': [
        {'text': "Asadbek", "score": 5},
        {'text': "Rahimjon", "score": 5},
        {'text': "Zafarbek", "score": 5},
        {'text': "Suhrob", "score": 5}
      ]
    }
  ];

  void bosilish(int score) {
  jamiAchko = jamiAchko +score;
    setState(() {
      _index++;
    });
  }

  void reset(){
    setState(() {
      _index = 0;
      jamiAchko = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Savollar"),
          centerTitle: true,
        ),
        body: _index < savollar.length
            ? Quiz(
                question: savollar,
                index: _index,
                hodisa: bosilish,
              )
            : Result(fullScore: jamiAchko,reset: reset,),
      ),
    );
  }
}
