import 'dart:convert';
import 'dart:io';
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => new _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController _ctrlNumber = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();
 _login() async {
    var httpClient = new HttpClient();
    var uri = new Uri.https('192.168.1.66', '/riders');
    var request = await httpClient.getUrl(uri);
    var response = await request.close();
    var responseBody = await response.transform(utf8.decoder).join();
    return responseBody;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.only(top: 100.0),
        child: Form(
        child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',
                height: 150.0, width: 300.0, alignment: Alignment.center),
            TextFormField(
              validator: (value) {
                if(value.isEmpty){
                  return 'Please Enter The Number';
                }
              },
              controller: _ctrlNumber,
              decoration: InputDecoration(
                  labelText: "Email or Phone Number",
                  labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red))),
            ),
            Container(
              margin: EdgeInsets.only(top:20.0),
              child: TextFormField(
                validator: (value) {
                  if(value.isEmpty){
                    return 'Please Enter The Password';
                  }
                },
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
                height: 40.0,
                width: 150.0,
                margin: EdgeInsets.only(top: 20.0),
                child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                    child: GestureDetector(
                        onTap: () => _login(),
                        child: Center(
                            child: Text("LOGIN",
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
