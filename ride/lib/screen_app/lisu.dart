import "package:flutter/material.dart";

class LogSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png'),
          ],
        ),
      ),
    );
  }
}
