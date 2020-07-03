import 'package:flutter/material.dart';
import 'package:prjp/quiz.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: //WaveDemoHomePage(),
          Questionnaire(),
      //Nmrdsbtn(),
    );
  }
}
