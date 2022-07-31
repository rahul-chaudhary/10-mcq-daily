import 'package:flutter/material.dart';
import './question.dart';
import './colors.dart';
import './finish_screen.dart';

final Colours _clr = Colours();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Question _qtn = Question();
  int _qn = 0; //Question number
  List<Color> _btnClr = [_clr.clrRed, _clr.clrRed, _clr.clrRed, _clr.clrRed];

  Padding elvBtn(int j) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0.0),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            if (_qtn.getCorrectAns(_qn) == _qtn.getAnsList(_qn)[j]) {
              _btnClr[j] = _clr.clrGreen;
            }
          });
        },
        style: ElevatedButton.styleFrom(
          primary: _btnClr[j], //background color of button
          elevation: 1.5, //elevation of button
          shape: RoundedRectangleBorder(
            //to set border radius to button
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(_qtn.getAnsList(_qn)[j]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    _qtn.getQuestion(_qn),
                    softWrap: true,
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      color: Color(0xffEEEEEE),
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                elvBtn(0),
                elvBtn(1),
                elvBtn(2),
                elvBtn(3),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 15.0),
              child: ElevatedButton(
                onPressed: () {
                  if (_qtn.getQuestion(_qn) !=
                      _qtn.getQuestion(_qtn.getQuesLength() - 1)) {
                    setState(() {
                      _btnClr = [
                        _clr.clrRed,
                        _clr.clrRed,
                        _clr.clrRed,
                        _clr.clrRed
                      ];
                      _qn++;
                    });
                  } else {
                    Navigator.pushNamed(context, 'FinishScreen');
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: _clr.clrBlack, //background color of button
                  elevation: 1.5, //elevation of button
                  shape: RoundedRectangleBorder(
                    //to set border radius to button
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text(
                  "Next question",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
