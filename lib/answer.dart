import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText; 

  Answer(this.selectHandler, this.answerText );
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 238, 84, 37)), foregroundColor: MaterialStateProperty.all(Color.fromARGB(255, 78, 255, 107)),),
        child: Text(answerText),
        onPressed: selectHandler,
      )
    );
  }
} 