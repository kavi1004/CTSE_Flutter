import 'package:ctse_frontend/main.dart';
import 'package:ctse_frontend/SupportCenter/faq_model.dart';
import 'package:flutter/material.dart';

import '../Helpers/constants.dart';

class FaqScreen extends StatefulWidget {
  const FaqScreen({Key key, this.title}) : super(key: key);

  final String title;
  @override
  State<FaqScreen> createState() => _FaqScreenState();
}

class _FaqScreenState extends State<FaqScreen> {
  @override
  Widget build(BuildContext context) {
    var screenheight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: HexColor("FAEAEA"), // appBar: AppBar(
      //   title: Text(widget.title),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back, color: Colors.black),
      //     onPressed: () => Navigator.pushReplacement(
      //       context,
      //       MaterialPageRoute(
      //           builder: (context) => const HomePage(
      //                 title: 'Scrum Board',
      //               )),
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child: Container(
          height: screenheight * 0.85,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Text("FAQ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: faqcontents.length,
                  itemBuilder: (_, i) {
                    return Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                          height: 150,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: ExpansionTile(
                              title: Text(
                                faqcontents[i].question,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              iconColor: Colors.black,
                              collapsedTextColor: Colors.black,
                              collapsedIconColor: Colors.red,
                              textColor: Colors.red,
                              children: <Widget>[
                                ListTile(
                                  title: Text(
                                    faqcontents[i].answer,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ],
                            ),
                          )),
                    );
                  },
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    faqcontents.length,
                    (index) => buildDot(index, context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      height: 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
