import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_two/ENTITIES/subjectsChecked.dart';
import 'package:flutter_two/SecondScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_two/customCardWidget.dart';
import 'Another.dart';

void main() {
  runApp( MaterialApp(
    title: 'Navigation Basics',
    home: GHFlutterApp(),
  ));
}

class GHFlutterApp extends StatefulWidget {
  @override
  State<GHFlutterApp> createState() => _GHFlutterAppState();
}

class _GHFlutterAppState extends State<GHFlutterApp> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: Container(
            margin: const EdgeInsets.all(15.0),
            width: double.infinity,
            child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              backgroundColor: const Color(0xff270F36),
              onPressed: () {
                if (kDebugMode) {
                  print("Clicked on button");
                }
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                 SecondScreen(selectedObjList: subjectsChecked.subjectsCheckedList)),
                );
              },
              label: const Text("Continue"),
            ),
          ),
          body: SafeArea(
            child: Container(
              margin: const EdgeInsets.only(left: 12,top: 12,bottom: 12,right: 0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                       margin: const EdgeInsets.only(top: 10.0),
                       child: Text(
                        "Teacher Profile",
                        style: GoogleFonts.epilogue(
                            color: const Color(0xff270F36),
                            fontWeight: FontWeight.w800,
                          fontSize: 15
                        ),
                    ),
                     ),
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: Text(
                        "Which grades &\nsubjects you teach",
                        style: GoogleFonts.epilogue(
                            color: const Color(0xff270F36),
                            fontWeight: FontWeight.w700,
                            fontSize: 30
                        ),
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: Another.newData.length,
                        itemBuilder: (BuildContext context, int index) {
                          return customCard(
                            dataList: Another.newData[index]['subjects'] as List<Map<String,String>>,
                            standard: Another.newData[index]['standard'].toString(),
                            //subImgUrl: Another.,
                          );
                        })
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
