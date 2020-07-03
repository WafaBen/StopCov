import 'package:flutter/material.dart';

import 'Colors.dart';

BoxDecoration nMbox = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mC,
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

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: mCD,
    boxShadow: [
      BoxShadow(
          color: mCL, offset: Offset(3, 3), blurRadius: 3, spreadRadius: -3),
    ]);

BoxDecoration nMboxInvertActive = nMboxInvert.copyWith(color: mCC);

BoxDecoration nMbtn = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: mC,
    boxShadow: [
      BoxShadow(
        color: mCD,
        offset: Offset(2, 2),
        blurRadius: 2,
      )
    ]);

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
