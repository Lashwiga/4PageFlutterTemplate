import 'package:flutter/material.dart';

class NotificationScreenListTile extends StatelessWidget {
  NotificationScreenListTile({required this.title, required this.description});

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
  return ExpansionTile(
    // key: PageStorageKey(this.widget.headerTitle),

    title: Text(title,style: TextStyle(fontSize: 18),),

    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(description, style: TextStyle(fontSize: 14),)),
    ],

    // onExpansionChanged: (value){
    //   setState(() {
    //     isExpand=value;
    //   });
    // },
    );
  }
}