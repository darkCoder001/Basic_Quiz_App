import 'package:flutter/src/widgets/framework.dart';
import "package:flutter/material.dart";
import 'package:flutter/src/widgets/placeholder.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    var a="You did it!!";
    if(resultScore <= 10){
      a="You are awesome and innocent";
    }
    else if (resultScore <= 12){
      a="Pretty likeable";
    }
    else{
      a="Abey Saale, ganda insaan...Chiiii";
    }
    return a;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: 
      Column(
        children: [
          Text(resultPhrase, style: TextStyle(fontSize: 36, color: Color.fromARGB(255, 52, 172, 242)), textAlign: TextAlign.center, ),
          OutlinedButton(onPressed: resetHandler, child: Text("Restart Quiz", style: TextStyle(fontSize: 25, color: Colors.deepPurple),))
        ],
      )
      ) ;
  }
}