// ignore_for_file: curly_braces_in_flow_control_structures, sized_box_for_whitespace
import 'dart:ui';

import 'package:ctse_frontend/Helpers/constants.dart';
import 'package:ctse_frontend/Settings/notifications.dart';
import 'package:ctse_frontend/SplashScreen/SplashMainScreen.dart';
import 'package:ctse_frontend/SupportCenter/faq.dart';
import 'package:ctse_frontend/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_greetings/flutter_greetings.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'BottomNavigationBar/BottomNavigationBar.dart';
import 'View/ProjectPage.dart';
import 'View/SprintTaskPage.dart';
import 'View/TicketPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Scrum Board',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: SplashScreenMain(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: HexColor("FAEAEA"),
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: SafeArea(
        child: Container(
          height: screenheight * 0.87,
          child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Kugathasan",
                              style: TextStyle(fontSize: 25),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Birahavi",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/images/user.jpg'),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                      "Face of your process, a visual status of your sprint, showing your work split across different stages of your workflow"),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProjectPage(
                                title: 'Projects',
                              ),
                            ));
                      }),
                      child: Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: ListTile(
                                  leading: Image.asset(
                                    'assets/images/project1.png',
                                  ),
                                  title: Text('Projects'),
                                  subtitle:
                                      Text('This is a simple card in Flutter.'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // Container 2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SprintTaskPage(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: ListTile(
                                  leading:
                                      Image.asset('assets/images/sprint.png'),
                                  title: Text('Create Sprints & Tasks'),
                                  subtitle:
                                      Text('This is a simple card in Flutter.'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    //Conatiner 3s

                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const TicketPage(
                              title: 'Tickets',
                            ),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          margin: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: ListTile(
                                  leading: Image.asset('assets/images/tic.png'),
                                  title: Text('Create Tickets'),
                                  subtitle:
                                      Text('This is a simple card in Flutter.'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Row(children: [
                //     SizedBox(width: 30),
                //     Positioned(
                //       top: 12,
                //       right: 5,
                //       child: CircleAvatar(
                //         radius: 25,
                //         backgroundImage: AssetImage('assets/images/user.jpg'),
                //       ),
                //     ),
                //     SizedBox(width: 20),
                //     Align(
                //       alignment: Alignment.topLeft,
                //       child: Text(YonoGreetings.showGreetings() + ' ' + 'Kavi!',
                //           style: TextStyle(
                //             fontWeight: FontWeight.bold,
                //             fontSize: 20,
                //             color: Colors.black,
                //           )),
                //     )
                //   ]),
                // ),
                // Container(
                //   height: 300,
                //   width: 600,
                //   child: Lottie.asset("assets/json/meetings.json"),
                // ),
                // SizedBox(height: 50),
                // Container(
                //     height: 200,
                //     width: 300,
                //     child: Card(
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(15),
                //         //set border radius more than 50% of height and width to make circle
                //       ),
                //       color: HexColor("F3E6E6"),
                //       child: Container(
                //         margin: EdgeInsets.all(10.0),
                //         child: SingleChildScrollView(
                //           child: Column(
                //             children: [
                //               ListTile(
                //                 title: Text(
                //                   'Projects',
                //                   style: TextStyle(
                //                       fontSize: 30,
                //                       fontWeight: FontWeight.bold,
                //                       color: HexColor("C68888")),
                //                 ),
                //               ),
                //               Container(
                //                 margin: EdgeInsets.only(left: 230, top: 80),
                //                 child: IconButton(
                //                   icon: const Icon(Icons.arrow_forward_outlined),
                //                   color: Colors.black,
                //                   onPressed: () {
                //                     Navigator.pushReplacement(
                //                       context,
                //                       MaterialPageRoute(
                //                         builder: (context) => const ProjectPage(
                //                           title: 'Projects',
                //                         ),
                //                       ),
                //                     );
                //                   },
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     )),
                // SizedBox(height: 30),
                // Container(
                //     child: Row(children: [
                //   SizedBox(width: 20),
                //   Container(
                //       height: 160,
                //       width: 150,
                //       child: Card(
                //         color: HexColor("E1D8D8"),
                //         child: Container(
                //           margin: EdgeInsets.all(10.0),
                //           child: Column(
                //             children: [
                //               ListTile(
                //                 title: Text(
                //                   'Create Sprints & Tasks',
                //                   style: TextStyle(
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.bold,
                //                       color: HexColor("7A7777")),
                //                 ),
                //               ),
                //               Container(
                //                 margin: EdgeInsets.only(left: 80, top: 15),
                //                 child: IconButton(
                //                   icon: const Icon(Icons.arrow_forward_outlined),
                //                   color: Colors.black,
                //                   onPressed: () {
                //                     Navigator.pushReplacement(
                //                       context,
                //                       MaterialPageRoute(
                //                         builder: (context) =>
                //                             const SprintTaskPage(),
                //                       ),
                //                     );
                //                   },
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       )),
                //   SizedBox(width: 50),
                //   Container(
                //       height: 160,
                //       width: 150,
                //       child: Card(
                //         color: HexColor("CAB6B6"),
                //         child: Container(
                //           margin: EdgeInsets.all(10.0),
                //           child: Column(
                //             children: [
                //               ListTile(
                //                 title: Text(
                //                   'Create Tickets',
                //                   style: TextStyle(
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.bold,
                //                       color: HexColor("7A7777")),
                //                 ),
                //               ),
                //               Container(
                //                 margin: EdgeInsets.only(left: 90, top: 20),
                //                 child: IconButton(
                //                   icon: const Icon(Icons.arrow_forward_outlined),
                //                   color: Colors.black,
                //                   onPressed: () {
                //                     Navigator.pushReplacement(
                //                       context,
                //                       MaterialPageRoute(
                //                         builder: (context) => const TicketPage(
                //                           title: 'Tickets',
                //                         ),
                //                       ),
                //                     );
                //                   },
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ))
                // ])),
              ])),
        ),
      ),
    );
  }
}
