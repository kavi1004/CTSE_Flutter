import 'package:ctse_frontend/main.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../Helpers/constants.dart';
import '../BottomNavigationBar/BottomNavigationBar.dart';

class SplashThree extends StatefulWidget {
  const SplashThree({Key key}) : super(key: key);

  @override
  State<SplashThree> createState() => _SplashThreeState();
}

class _SplashThreeState extends State<SplashThree> {
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
              Container(
                child: Lottie.asset("assets/json/programer.json"),
              ),
              SizedBox(
                height: 60,
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
                    "Choose a WorkFlow or Make Your Own",
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
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPrimary: Colors.white,
                    primary: primaryredColor,
                  ).copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (_) => BottomNavigationScreen(
                                pageno: 0,
                              )),
                    );
                  },
                  child: Text("Start"),
                ),
              )),
            ],
          ),
        ),
      )),
    );
  }
}
