import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int fullScore;
  const Result({required this.fullScore, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Jami achko: $fullScore",
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
