import 'package:flutter/material.dart';
import 'NotificationScreenListTile.dart';

class Screen4 extends StatefulWidget {
  @override
  _Screen4State createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // A column of Widgets that make up the app
        child: Column(
          children: [
            // Two buttons "Message Notifications" "Assignment Notifications"
            Container(
              height: 30,
              child: Row(
                children: [
                  // Message notis button
                  Expanded(
                    child: TextButton(
                        onPressed: () {print('msgnoti pressed');},
                        child: Text('Message Notifications')),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 2.0,
                  ),
                  // Assignment notis button
                  Expanded(
                    child: TextButton(
                        onPressed: () {print('asnmtnoti pressed');},
                        child: Text('Assignment Notifications')),
                  )
                ],
              ),
            ),

            Flexible(
              child: getListView()
            ),

          ],
        )
      ),
    );
  }
}

// TODO: placeholder, replace with something that gets the actual info for notifications
List<List> getListElements() {
  var items = List<List>.generate(1000, (counter) => ["Notification $counter","description $counter"]);
  return items;
}

// builds memory efficient list
Widget getListView() {
  var listItems = getListElements();

  var listView = ListView.builder(
    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
    itemBuilder: (context,index) {
      return NotificationScreenListTile(
        title: listItems[index][0],
        description: listItems[index][1],
      );
    }
  );

  return listView;
}