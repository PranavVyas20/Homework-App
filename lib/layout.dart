
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_two/ENTITIES/MyObj.dart';
import 'package:flutter_two/ENTITIES/subjectsChecked.dart';

// Inner card for horizontal views
class CustomLayout extends StatefulWidget {
  final String imgurl;
  final String subName;
  final String standard;
  // final List<String> subjectsCheckedList;

   CustomLayout({
    Key? key,
    required this.imgurl,
    required this.subName,
     // required this.subjectsCheckedList,
     required this.standard
    }) : super(key: key);

  @override
  State<CustomLayout> createState() => _CustomLayoutState();
}

class _CustomLayoutState extends State<CustomLayout> {
  late bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 17.0,left: 0.0,right: 7.0),
      // elevation: 2,
      // color: Colors.white70,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
      ),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color(0xffFAF1F0),
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8.0),
                    topLeft: Radius.circular(8.0))
            ),
            child:  Image(
              image: NetworkImage(
                widget.imgurl
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Checkbox(
                  activeColor: const Color(0xff270F36),
                  value: isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      isChecked = value!;
                      if(subjectsChecked.subjectsCheckedList.length == 0){

                      }
                       // subjectsChecked.subjectsCheckedList.add(widget.standard);
                       // Map<String,String> lol = {widget.subName:widget.standard};
                       // subjectsChecked.listOfCheckedMAp.add(lol);
                       // print(subjectsChecked.listOfCheckedMAp.length);
                       // print(lol.keys.first.toString());
                     MyObj obj = MyObj(widget.subName, widget.standard,subjectsChecked.subjectsCheckedList.length);

                      var existingItem = subjectsChecked.subjectsCheckedList.firstWhere((itemToCheck) =>
                      (itemToCheck.subject == obj.subject && itemToCheck.standard == obj.standard),
                          orElse: () => MyObj(null, null, null));

                      if(existingItem.subject != null){
                        if (kDebugMode) {
                          print("Item already in the list, removing it now:");
                        }
                        subjectsChecked.subjectsCheckedList.removeWhere((data) => data.subject == obj.subject && data.standard == obj.standard);
                      }else{
                        if (kDebugMode) {
                          print("Item added to the list");
                        }
                        subjectsChecked.subjectsCheckedList.add(obj);
                      }
                    });
                  },
                ),
                 Text(widget.subName == 'Environmental Studies' ? 'EVS' : widget.subName,
                 overflow: TextOverflow.ellipsis,
                 style: const TextStyle(
                   fontWeight: FontWeight.bold,
                 ),
                 )
              ],
            ),
          )
        ],
      ),
    );
  }
}
