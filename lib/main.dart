import 'package:flutter/material.dart';
import './homepage.dart';
import './finish_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import './colors.dart';

final Colours _clr = Colours();

void main() => runApp(const QuizApp());

class QuizApp extends StatelessWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: 'homepage',
      routes: {
        'homepage': (context) => const HomePage(),
        'FinishScreen': (context) => const FinishScreen(),
      },
      theme: ThemeData(fontFamily: 'WorkSans'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quiz App"),
          backgroundColor: _clr.clrBlack,
        ),
        backgroundColor: _clr.clrBlueDark,
        body: const HomePage(),
      ),
    );
  }
}
