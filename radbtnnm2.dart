import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Color mCD = Colors.black.withOpacity(0.075);
Color mC = Color(0XFFF1F2F5);
Color darktbleu = Color.fromRGBO(6, 57, 125, 1);
Color mCL = Colors.white;

class Nmrdsbtn2 extends StatefulWidget {
  bool result;
  @override
  State<StatefulWidget> createState() => NmrdsbtnState(this);
}

class NmrdsbtnState extends State<Nmrdsbtn2> {
  Nmrdsbtn2 btn;
  bool down = true;
  NmrdsbtnState(this.btn) : super();
  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Container(
        color: mC,
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                down = !down;
                btn.result = true;
              });
            },
            child: Container(
              width: 25,
              height: 25,
              decoration: nMboxInvert,
              child: Icon(
                Icons.fiber_manual_record,
                color: down ? darktbleu : Colors.transparent,
              ),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, top: 0, right: 30, bottom: 0),
        child: Text(
          'Oui',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w800,
            color: Color.fromRGBO(6, 57, 125, 1),
          ),
        ),
      ),
      Container(
        color: mC,
        child: Center(
          child: GestureDetector(
            onTap: () {
              setState(() {
                down = !down;
                btn.result = false;
              });
            },
            child: Container(
              width: 25,
              height: 25,
              decoration: nMboxInvert,
              child: Icon(
                Icons.fiber_manual_record,
                color: !down ? darktbleu : Colors.transparent,
              ),
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.only(left: 10, top: 0, right: 20, bottom: 0),
        child: Text(
          'Non',
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w800,
            color: Color.fromRGBO(6, 57, 125, 1),
          ),
        ),
      ),
    ]);
  }
}

class Checkboxe extends StatefulWidget {
  bool down = false;
  @override
  State<StatefulWidget> createState() => CheckboxState(this);
}

class CheckboxState extends State<Checkboxe> {
  CheckboxState(this.chkbx) : super();
  Checkboxe chkbx;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: mC,
      child: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              chkbx.down = !chkbx.down;
            });
          },
          child: Container(
            width: 40,
            height: 35,
            decoration: nMboxInvert,
            child: Icon(
              IconData(0xe5ca, fontFamily: 'MaterialIcons'),
              color: chkbx.down ? darktbleu : Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}

BoxDecoration nMbox2 = BoxDecoration(
    color: Color(0XFFEFF3F6),
    borderRadius: BorderRadius.all(Radius.circular(70)),
    boxShadow: [
      BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 0.1),
          offset: Offset(4.0, 4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0),
      BoxShadow(
          color: Color.fromRGBO(255, 255, 255, 0.9),
          offset: Offset(-4.0, -4.0),
          blurRadius: 15.0,
          spreadRadius: 1.0),
    ]);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);
