import 'package:flutter/material.dart';
import './colors.dart';

final Colours _clr = Colours();

class FinishScreen extends StatelessWidget {
  const FinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _clr.clrBlueDark,
      body: const Center(
        child: Text(
          "You did it!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 60.0,
          ),
        ),
      ),

    );
  }
}
