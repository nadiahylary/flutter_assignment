import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyText extends StatelessWidget {
  final VoidCallback clickHandler;
  final List<String> changingText;
  final int textIndex;
  final VoidCallback? resetHandler ;
  const MyText({required this.changingText, required this.clickHandler, required this.textIndex, this.resetHandler});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(changingText[textIndex],
              style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center
          ),
          TextButton(onPressed: clickHandler,
            child: const Text('Change Text', style: TextStyle(
                fontSize: 36, fontWeight: FontWeight.w500, color: Colors.blueGrey),
            ),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.redAccent)),
          ),
        ],
      ),
    );
  }
}
