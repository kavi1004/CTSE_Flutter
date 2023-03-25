import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../../../Helpers/constants.dart';
import 'SplashScreenThree.dart';

class SplashTwo extends StatefulWidget {
  const SplashTwo({Key key}) : super(key: key);

  @override
  State<SplashTwo> createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
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
                child: Lottie.asset("assets/json/user.json"),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  "The Best Software Teams",
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
                    "Scrum root is built for every member",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                        color: HexColor("#00195E")),
                  ),
                  Text(
                    " of your softwareteam to release great  ",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Montserrat",
                        color: HexColor("#00195E")),
                  ),
                  Text(
                    " SOFTWARE",
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
                      MaterialPageRoute(builder: (context) => SplashThree()),
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
