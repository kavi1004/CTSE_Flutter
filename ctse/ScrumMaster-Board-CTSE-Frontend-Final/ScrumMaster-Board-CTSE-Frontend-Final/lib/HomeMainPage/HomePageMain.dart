// ignore_for_file: prefer_const_constructors, prefer_if_null_operators, use_build_context_synchronously, unused_local_variable
import 'dart:async';
import 'dart:convert';

import 'package:ctse_frontend/Helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  //* Controllers
  TextEditingController createticketphonenumbercontroller =
      TextEditingController();
  TextEditingController createticketdescriptioncontroller =
      TextEditingController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();
  final ItemScrollController itemScrollController = ItemScrollController();

//* Variables

  bool _isLoading = false;
  var currentSelectedValue;
  var conBody;
  var connectionID;

  final now = DateTime.now();
  List<String> TicketTypes = [
    "Unclear",
    "Not working",
    "Wire Damage",
    "Electric Shock",
    "Other"
  ];
  bool created = false;

  List apiBody = [];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: _isLoading
          ? loader
          : SafeArea(
              child: Padding(
                padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenheight * 0.03,
                    ),
                    SizedBox(
                      height: screenheight * 0.05,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Tickets',
                          ),
                          TextButton(
                              onPressed: () {
                                //! Alert Dialog Box Starts
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        scrollable: true,
                                        content: StatefulBuilder(
                                          builder: (BuildContext context,
                                              StateSetter setState) {
                                            return Column(
                                              children: [
                                                Text(
                                                  "Create Tickets",
                                                ),
                                                SizedBox(
                                                  height: screenheight * 0.03,
                                                ),
                                                InputDecorator(
                                                    decoration: InputDecoration(
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                          borderSide:
                                                              BorderSide(),
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      15.0),
                                                          borderSide:
                                                              BorderSide(
                                                            width: 2.0,
                                                          ),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[300],
                                                        filled: true,
                                                        border: OutlineInputBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15.0))),
                                                    child:
                                                        DropdownButtonHideUnderline(
                                                            child:
                                                                DropdownButton<
                                                                    String>(
                                                      hint: Text("Select"),
                                                      value:
                                                          currentSelectedValue,
                                                      isDense: true,
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          currentSelectedValue =
                                                              newValue;
                                                        });
                                                      },
                                                      items: TicketTypes.map(
                                                          (String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                    ))),
                                                SizedBox(
                                                  height: screenheight * 0.01,
                                                ),

                                                // button("Create", postTicket),
                                                SizedBox(
                                                  height: screenheight * 0.001,
                                                ),
                                                TextButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: Text(
                                                      "Cancel",
                                                      style: TextStyle(
                                                          color: HexColor(
                                                              "#D9A383"),
                                                          fontFamily:
                                                              "poppinsregular"),
                                                    ))
                                              ],
                                            );
                                          },
                                        ),
                                      );
                                    });
                                //! Alet Dialogbox Ends
                              },
                              child: Text(
                                "+ Create Tickets",
                                style: TextStyle(
                                    color: HexColor("#D9A383"),
                                    fontFamily: "poppinsregular"),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    //! API BODY
                    SingleChildScrollView(
                        child: apiBody.isNotEmpty
                            ? SizedBox(
                                height: screenheight * 0.73,
                                child: ScrollablePositionedList.separated(
                                    itemScrollController: itemScrollController,
                                    itemPositionsListener:
                                        itemPositionsListener,
                                    // padding: EdgeInsets.all(20),
                                    itemBuilder: ((context, index) {
                                      return GestureDetector(
                                        onTap: () {},
                                      );
                                    }),
                                    separatorBuilder:
                                        (BuildContext context, int index) {
                                      return SizedBox(
                                        height: 15,
                                      );
                                    },
                                    itemCount: apiBody.length),
                              )
                            : Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: screenheight * 0.35),
                                child: Center(
                                  child: SizedBox(
                                    child: Text("NO DATA FOUND"),
                                  ),
                                ),
                              ))
                  ],
                ),
              ),
            ),
    );
  }
}
