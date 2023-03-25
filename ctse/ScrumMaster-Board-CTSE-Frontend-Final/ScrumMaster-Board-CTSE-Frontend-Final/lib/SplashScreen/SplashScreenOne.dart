import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../Helpers/constants.dart';
import 'SplashScreenTwo.dart';

class SplashOne extends StatefulWidget {
  const SplashOne({Key key}) : super(key: key);

  @override
  State<SplashOne> createState() => _SplashOneState();
}

class _SplashOneState extends State<SplashOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F8F9FE"),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Lottie.asset("assets/json/task.json"),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "Scrum Root",
                  style: TextStyle(
                      fontSize: 28,
                      fontFamily: "Montserrat",
                      color: primaryColor,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Column(
                children: [
                  Text(
                    "The No #1 Software Development Tool ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                        color: HexColor("#00195E")),
                  ),
                  Text(
                    "Used By Agile Teams ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                        color: HexColor("#00195E")),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: Container(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: primaryredColor,
                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SplashTwo()),
                    );
                  },
                  child: Text("Next"),
                ),
              )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Skip",
                    style: TextStyle(color: primaryredColor),
                  ))
            ],
          ),
        ),
      )),
    );
  }
}
