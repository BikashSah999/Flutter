import "package:flutter/material.dart";

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          margin: EdgeInsets.only(top: 20.0),
          child: Column(
              children: <Widget>[
          TextField(
            decoration: InputDecoration(
                labelText: "First Name",
                labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                ),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Last Name",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
          ),
          Container(
            child: TextField(
              decoration: InputDecoration(
                  labelText: "Email",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
          ),
                Container(
                  child: TextField(
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
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Address",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Number",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Gender",
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.red))),
                  ),
                ),
          Container(
          height: 40.0,
          width: 150.0,
          margin: EdgeInsets.only(top: 5.0),
          child: Material(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.red,
              child: GestureDetector(
                  onTap: () {},
                  child: Center(
                      child: Text("SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))))))
      ],
    ),)
    ,
    );
  }
}
