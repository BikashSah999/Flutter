import "package:flutter/material.dart";

class LogSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',
                height: 150.0, width: 300.0, alignment: Alignment.center),
            LoginButton(),
            Container(
              margin: EdgeInsets.only(top: 20.0),
              child: SignUpButton(),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width:250.0,
        child: Material(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.red,
            child: GestureDetector(
                onTap: () {Navigator.of(context).pushNamed("/LogInPage");},
                child: Center(
                    child: Text("LOG IN",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))))));
  }
}

class SignUpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40.0,
        width:250.0,
        child: Material(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.black,
            child: GestureDetector(
                onTap: () {Navigator.of(context).pushNamed("/SignUpPage");},
                child: Center(
                    child: Text("SIGN UP",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))))));
  }
}
