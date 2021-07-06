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

// Creates a list of data for notifications
// in format [[title1, desc1], [title2, desc2], ...]
// TODO: this is a placeholder, replace with something that gets the actual info for notifications
List<List> getListElements() {
  var items = List<List>.generate(1000, (counter) => ["Notification $counter","description $counter"]);
  return items;
}

// builds memory efficient list
// returns a built ListView
Widget getListView() {
  // create variable with list of data for notifications
  // needs format [[title1, desc1], [title2, desc2], ...]
  var listItems = getListElements();

  // build the thing
  var listView = ListView.builder(
    padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
    itemBuilder: (context,index) {
      return NotificationScreenListTile(
        title: listItems[index][0],
        description: listItems[index][1],
      );
    }
  );

  // return built ListView when this function is called
  return listView;
}