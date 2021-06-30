import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //replace the body with the code for your page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Food App',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Comic Sans MS',
              ),
            ),
            TextButton(
                onPressed: () {print('tested');},
                child: Text("test")
            ),
            Image.asset('assets/steak.png'),
        ],
      ),
      ),
    );
  }
}
