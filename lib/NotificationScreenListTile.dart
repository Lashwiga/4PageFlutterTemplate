// NOTE: This file makes a custom Widget based off of the ExpansionTile widget

import 'package:flutter/material.dart';

class NotificationScreenListTile extends StatelessWidget {
  // require title and description parameters
  NotificationScreenListTile({required this.title, required this.description});

  final String title;
  final String description;

  // build a custom ExpansionTile
  @override
  Widget build(BuildContext context) {
  return ExpansionTile(
    title: Text(title,style: TextStyle(fontSize: 18),),
    // children shows up when expanded
    children: [
      Align(
        alignment: Alignment.topLeft,
        child: Text(description, style: TextStyle(fontSize: 14),)
      ),
    ],
    );
  }
}