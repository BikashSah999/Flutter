import "package:flutter/material.dart";

class LogSign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*20),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',
                height: (MediaQuery.of(context).size.height/100)*25, width: (MediaQuery.of(context).size.width/100)*60, alignment: Alignment.center),
            LoginButton(),
            Container(
              margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*2.5),
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
        height: (MediaQuery.of(context).size.height/100)*7,
        width:(MediaQuery.of(context).size.width/100)*50,
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
           height: (MediaQuery.of(context).size.height/100)*7,
        width:(MediaQuery.of(context).size.width/100)*50,
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
