import 'package:flutter/material.dart';

import 'Colors.dart';

class Nmrdsbtn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => NmrdsbtnState();
}

class NmrdsbtnState extends State<Nmrdsbtn> {
  bool down = false;
  String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Center(
        child: Container(
          width: 300,
          height: 60,
          decoration: nMtxtf,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: TextField(
              onChanged: (String str) {
                setState(() {
                  text = str;
                });
              },
              decoration: InputDecoration(
                hintText: '37.0',
                filled: true,
                fillColor: Colors.transparent,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(color: background),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  borderSide: BorderSide(
                    color: background,
                  ),
                ),
              ),
            ),
          ),
        ),
        /*child: GestureDetector(
          onTap: () {
            setState(() {
              down = !down;
            });
          },
          child: Container(
            width: 40,
            height: 40,
            decoration: down ? nMRdBtnInvert : nMRdBtn,
            child: Icon(
              Icons.fiber_manual_record,
              color: down ? Colors.transparent : darktbleu,
            ),
          ),
        ),*/
      ),
    );
  }
}

BoxDecoration nMtxtf = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: mCD.withOpacity(0.01),
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
      BoxShadow(
          color: mCD, offset: Offset(-2, -2), blurRadius: 4, spreadRadius: -3),
    ]);

BoxDecoration nMRdBtn = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: background,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: mCL,
        offset: Offset(-10, -10),
        blurRadius: 10,
      ),
    ]);

BoxDecoration nMRdBtnInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);
