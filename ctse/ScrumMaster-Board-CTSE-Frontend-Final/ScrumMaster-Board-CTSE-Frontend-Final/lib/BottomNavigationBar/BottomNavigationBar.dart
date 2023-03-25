// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_interpolation_to_compose_strings

import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:ctse_frontend/Helpers/constants.dart';
import 'package:ctse_frontend/Settings/notifications.dart';
import 'package:ctse_frontend/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:rounded_tabbar_widget/rounded_tabbar_widget.dart';

import '../SupportCenter/faq.dart';

class BottomNavigationScreen extends StatefulWidget {
  final int pageno;
  const BottomNavigationScreen({key, this.pageno});

  @override
  State<BottomNavigationScreen> createState() => _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends State<BottomNavigationScreen> {
  int maxCount = 4;
  StreamSubscription _subscription;
  String netstatus = '';

  @override
  void initState() {
    checkConnection();
    _subscription =
        Connectivity().onConnectivityChanged.listen((connectionStatus) {
      setState(() {
        netstatus = 'Connection statue = ' + connectionStatus.name.toString();
      });
      checkConnection();
    });
    super.initState();
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future checkConnection() async {
    final connectionStatus = await Connectivity().checkConnectivity();
    if (connectionStatus == ConnectivityResult.mobile) {
      setState(() {
        netstatus = 'mobiledata';
      });
    } else if (connectionStatus == ConnectivityResult.wifi) {
      setState(() {
        netstatus = 'wifi';
      });
    } else {
      setState(() {
        netstatus = 'No';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isKeyboardOpen = MediaQuery.of(context).viewInsets.bottom != 0.0;

    return Scaffold(
      body: isKeyboardOpen
          ? null
          : netstatus == "No"
              ? Center(
                  child: Lottie.asset(
                  "assets/json/nointernet.json",
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ))
              : RoundedTabbarWidget(
                  itemNormalColor: Colors.red,
                  itemSelectedColor: Colors.white,
                  tabBarBackgroundColor: HexColor("F4CFCF"),
                  tabIcons: [
                    Icons.home,
                    Icons.book,
                    // Icons.history,
                    Icons.settings,
                  ],
                  pages: [
                    HomePage(
                      title: 'Scrum Board',
                    ),
                    // FaqScreen( title: 'Help',)
                    FaqScreen(title: 'Help'),
                    SettingsScreen(title: 'Settings')
                  ],
                  selectedIndex: widget.pageno,
                  onTabItemIndexChanged: (int index) {
                    // print('Index: $index');
                  },
                ),
    );
  }
}
