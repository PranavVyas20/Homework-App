import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'ENTITIES/MyObj.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key, required this.selectedObjList}) : super(key: key);

  final List<MyObj> selectedObjList;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          margin: const EdgeInsets.all(15.0),
          width: double.infinity,
          child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            backgroundColor: const Color(0xff270F36),
            onPressed: () {},
            label: const Text("Thank You"),
          ),
        ),
        body: SafeArea(
          child:
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: ListView(children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(15,10,10,28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Welcome",
                          style: GoogleFonts.epilogue(
                              color: const Color(0xff270F36),
                              fontWeight: FontWeight.w800,
                              fontSize: 15
                          ),),
                        Container(
                          margin: const EdgeInsets.only(top: 8),
                          child: Text("You teach these\nclass and subjects",
                            style: GoogleFonts.epilogue(
                                color: const Color(0xff270F36),
                                fontWeight: FontWeight.w700,
                                fontSize: 30
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListView.builder(itemCount:selectedObjList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (BuildContext,int index){
                        return Container(
                          padding: const EdgeInsets.all(10),
                          margin:  const EdgeInsets.fromLTRB(10, 0, 10, 7),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(9.0)
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9.0),
                                    color: const Color(0xff270F36)
                                ),
                                child: Text(selectedObjList[index].standard!,
                                  style: GoogleFonts.epilogue(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14
                                  ),),
                              ),
                              Text(selectedObjList[index].subject!,
                                style: GoogleFonts.epilogue(
                                    color: const Color(0xff270F36),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18
                                ),),
                            ],
                          ),
                        );
                      }),
                ],
                ),
              )
        ),
      ),
    );
  }
}
