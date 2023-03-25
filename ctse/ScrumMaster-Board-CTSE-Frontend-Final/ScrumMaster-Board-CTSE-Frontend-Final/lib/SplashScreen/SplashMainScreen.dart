import 'dart:async';
import 'package:ctse_frontend/SplashScreen/SplashScreenOne.dart';
import 'package:flutter/material.dart';

class SplashScreenMain extends StatefulWidget {
  @override
  State<SplashScreenMain> createState() => _SplashScreenMainState();
}

class _SplashScreenMainState extends State<SplashScreenMain> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashOne())));
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        child: Container(
          width: screenwidth,
          height: screenheight * 0.9,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  width: screenwidth,
                  height: screenheight * 0.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png'),
                        fit: BoxFit.fill),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Scrum Board",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Padding(
                  padding: EdgeInsets.only(top: screenheight * 0.4),
                  child: Text("The Home Of Scrum",
                      style: TextStyle(
                          fontFamily: "poppinsregular",
                          fontSize: 15,
                          fontWeight: FontWeight.w600)))
            ],
          ),
        ),
      ),
    ));
  }
}
