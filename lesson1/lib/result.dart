import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int fullScore;
  final VoidCallback reset;
  const Result({required this.fullScore, required this.reset, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "Jami achko: $fullScore",
            style: const TextStyle(fontSize: 20),
          ),
          TextButton(
              onPressed: reset,
              child: const Text(
                'Qaytadan urinish',
                style: TextStyle(color: Colors.blue),
              )),
        ],
      ),
    );
  }
}
