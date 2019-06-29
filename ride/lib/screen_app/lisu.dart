import "package:flutter/material.dart";

class LogSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        color: Colors.white,
        child: Container(
          margin: EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',height:150.0,width:300.0,alignment:Alignment.center),
            LoginButton(),
            SignUpButton(),
          ],
        ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.red,
        child: Text("Log In"),
        onPressed:null,
      )
    );
  }
}

class SignUpButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
        child: RaisedButton(
          color: Colors.red,
          child: Text("Sign Up"),
          onPressed:null,
        )
    );
  }
}
