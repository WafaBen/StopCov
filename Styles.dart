import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Styles {
  Widget logoImage(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        margin: EdgeInsetsDirectional.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color(0XFFF1F2F5),
          borderRadius: BorderRadius.circular(300.0),
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
          ],
        ),
        child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/stop_cov.png'),
            ))));
  }

  Widget appBar() {
    return Row(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
              color: Color(0XFFF1F2F5),
              borderRadius: BorderRadius.circular(100.0),
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
              ]),
          child: Icon(
            Icons.arrow_back_ios,
            color: Color.fromRGBO(250, 84, 87, 1),
          ),
        ),
      ],
    );
  }
}

class InputInfo {
  String texte;
  InputInfo(String texte) {
    this.texte = texte;
  }

  Widget textField(Icon icon) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 0),
      padding: EdgeInsets.all(5),
      height: 50,
      width: 350,
      decoration: BoxDecoration(
          color: Color(0XFFF1F2F5),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 25,
              offset: Offset(-15, -15),
              color: Colors.white.withOpacity(0.7),
            ),
            BoxShadow(
              blurRadius: 25,
              offset: Offset(8, 8),
              color: Colors.white.withOpacity(.15),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(1),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0XFFF1F2F5),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0XFFF1F2F5),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(3, 3),
                      color: Colors.white.withOpacity(0.7),
                    ),
                    BoxShadow(
                      blurRadius: 6,
                      offset: Offset(-3, -3),
                      color: Colors.white.withOpacity(0.25),
                    )
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(bottom: 14.0),
                  prefixIcon: icon,
                  hintText: texte,
                  hintStyle: TextStyle(
                      color: Color.fromRGBO(6, 57, 125, 0.5), fontSize: 12),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
