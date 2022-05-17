import 'package:flutter/material.dart';
import 'package:flutter_two/layout.dart';

// Outer card
class customCard extends StatelessWidget {

  final String standard;
  final List<Map<String,String>> dataList;

  const customCard({
    Key? key,
    required this.standard,
    required this.dataList
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0)
      ),
      margin: const EdgeInsets.only(top: 30.0),
      color: Colors.grey.shade100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: const Color(0xff270F36),
                borderRadius: BorderRadius.circular(10.0)),
            padding: const EdgeInsets.all(10.0),
            child:  Text(standard,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 230,
              child: ListView.builder(
                  itemCount: dataList.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()
                  ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                      child: SizedBox(
                          height: 114,
                          width: 165,
                          child: CustomLayout(
                            imgurl: dataList[index]['subject_image'].toString(),
                            subName: dataList[index]['subject_name'].toString(),
                            standard: standard,
                          )),
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }
}
