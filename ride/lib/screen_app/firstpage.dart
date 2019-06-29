import "package:flutter/material.dart";

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.white, 
        child: Image.asset('images/logo1.png'),
      ),
    );
  }
}
