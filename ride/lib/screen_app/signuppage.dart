 import "package:flutter/material.dart";
 import 'dart:convert';
 import 'dart:io';
 import "package:http/http.dart" as http;

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => new _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    final _formKey = GlobalKey<FormState>();
 TextEditingController _ctrlNumber = TextEditingController();
 TextEditingController _ctrlFirstname = TextEditingController();
 TextEditingController _ctrlLastname = TextEditingController();
 TextEditingController _ctrlAddress = TextEditingController();
 TextEditingController _ctrlGender = TextEditingController();
 TextEditingController _ctrlEmail = TextEditingController();
 TextEditingController _ctrlPassword = TextEditingController();

Future<dynamic> _signup() async {

  final response =await http.post("http://192.168.137.88:3000/customers/signup", body:{
    "firstname":_ctrlFirstname.text,
    "lastname":_ctrlLastname.text,
    "address":_ctrlAddress.text,
    "number":_ctrlNumber.text,
    "email":_ctrlEmail.text,
    "password":_ctrlPassword.text,
  });
  final responseJson = json.decode(response.body);
  print(responseJson);
  return response;
}


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
          margin: EdgeInsets.only(top: 20.0),
            child: Form(
              key: _formKey,
              child: Column(
              children: <Widget>[
          TextField(
            controller: _ctrlFirstname,
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
              controller: _ctrlLastname,
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
              controller: _ctrlEmail,
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
                    controller: _ctrlPassword,
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
                    controller: _ctrlAddress,
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
                    controller: _ctrlNumber,
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
                    controller: _ctrlGender,
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
                  onTap: () {
                    _signup();
                  },
                  child: Center(
                      child: Text("SIGN UP",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ))))))
      ],
    ),
    ),
     ),
    );
  }
}


