import 'package:flutter/material.dart';

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
          ],
        )
      ),
    );
  }
}
