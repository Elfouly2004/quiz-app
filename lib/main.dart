import 'package:flutter/material.dart';
import 'package:quizapp/view/finally.dart';
import 'package:quizapp/view/login.dart';
import 'package:quizapp/view/quiz%20.dart';


void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      home:  finally1 (),
    );
  }
}