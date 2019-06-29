import "package:flutter/material.dart";

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => new _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.only(top: 100.0),
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',
                height: 150.0, width: 300.0, alignment: Alignment.center),
            TextField(
              decoration: InputDecoration(
                  labelText: "Email or Phone Number",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            TextField(
              decoration: InputDecoration(
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
              obscureText: true,
            ),
            Container(
              height:40.0,
              margin: EdgeInsets.only(top:20.0),
                child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                    child: GestureDetector(
                        onTap: () {},
                        child: Center(
                            child: Text("LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ))))))
          ],
        ),
      ),
    );
  }
}
