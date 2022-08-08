import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  
  final VoidCallback? hodisa;
  final String? answer;
 

  Answer({this.hodisa, this.answer, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20,),
      width: double.infinity,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: hodisa,
          child: Text(answer!)),
    );
  }
}
