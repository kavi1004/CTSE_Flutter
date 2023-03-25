// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const projectName = "";

var mainheadingstyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
    letterSpacing: 8,
    color: primaryredColor,
    fontFamily: "Asap");

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}

//Major Colors
const primaryBlueColor = Color.fromARGB(255, 0, 25, 94);
const primaryredColor = Color.fromARGB(255, 226, 42, 69);
const primaryPurpleColor = Color.fromARGB(255, 88, 6, 132);
const primaryColor = Colors.black;
const primaryBlueBackColor = Color.fromARGB(255, 240, 249, 255);
const primaryPurpleBackColor = Color.fromARGB(255, 202, 215, 243);

var loader = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    SpinKitSpinningLines(
      color: primaryredColor,
      size: 23,
    ),

    // SpinKitPumpingHeart(
    //   color: primaryredColor,
    //   size: 23,
    // ),
    // SpinKitPumpingHeart(
    //   color: Colors.blue,
    //   size: 23,
    // ),
    // SpinKitSquareCircle(
    //   color: primaryredColor,
    //   size: 12,
    // ),
    // SizedBox(
    //   width: 3,
    // ),
    // SpinKitSquareCircle(color: Colors.blue, size: 12),
    // SizedBox(
    //   width: 3,
    // ),
    // SpinKitSquareCircle(color: primaryredColor, size: 12),
    // SizedBox(
    //   width: 3,
    // ),
    // SpinKitSquareCircle(color: Colors.blue, size: 12),
    // SizedBox(
    //   width: 3,
    // ),
    // SpinKitSquareCircle(color: primaryredColor, size: 12),

    // SpinKitFadingCube(color: primaryredColor, size: 12),
    // SpinKitFadingCube(color: Colors.blue, size: 12),
    // SpinKitFadingCube(color: primaryredColor, size: 12),
  ],
);

var peerloader = Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    // SpinKitFadingCircle(
    //   color: Colors.red,
    //   size: 70,
    // ),
    SpinKitChasingDots(
      color: Colors.red,
      size: 60,
    ),
  ],
);
