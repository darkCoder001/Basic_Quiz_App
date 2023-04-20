import 'package:flutter/material.dart';
import './quiz.dart';
import './answer.dart';
import "./result.dart";
//void main(){
//  runApp(MyApp());
//}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp>{
  var _questionIndex=0;
  var _totalScore=0;

  void resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;      
    });
  }
  var questions=const  [
      {
        "questionText": "What\'s your favurite color?",
        "answers": [{
          "text":"Black", "score":10}, 
          {"text":"Green", "score":4}, 
          {"text":"Blue", "score":3}, 
          {"text":"Red", "score":8}
          ]
      } ,
      {
        "questionText": "What\'s your favurite animal?", 
        "answers": [
          {"text":"Rabbit", "score":1}, 
          {"text":"Dog", "score":5}, 
          {"text":"Cat", "score":6}, 
          {"text":"You Yourself!", "score":1500}
          ]
      },
      {
        "questionText": "Who\'s your favurite instructor?", 
        "answers": [
          {"text":"Adil Sir", "score":20}, 
          {"text":"Kushagra Sir", "score":2}, 
          {"text":"Sagar Sir", "score":1}, 
          {"text":"Aatankvadi", "score":10}
          ]
      },
    ];
    void _answerQuestion(int score){
    
    _totalScore=_totalScore+score;
    setState(() {
      _questionIndex=_questionIndex+1;
    });
    print("Answer Chosen for $_questionIndex!");

    if(_questionIndex < questions.length){
     print("We have more questions!!"); 
    }
  }
   
  @override //this makes our code a bit clearer
  Widget build(BuildContext context){
    return MaterialApp(
      home: 
      Scaffold(
        body: _questionIndex < questions.length ? 
        Quiz
        (
          answerQuestion: _answerQuestion, 
          questionIndex: _questionIndex, 
          questions: questions,
          ) 
        : 
        Result(_totalScore, resetQuiz), 
        appBar: AppBar(title: Text("My first app")),
        ) 
    );
  }
} 
