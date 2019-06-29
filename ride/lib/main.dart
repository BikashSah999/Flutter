import "package:flutter/material.dart";
import "./screen_app/firstpage.dart";
import "./screen_app/lisu.dart";
import "./screen_app/loginpage.dart";
import "./screen_app/signupfile.dart";
void main(){
  runApp(MaterialApp(
    home:LogSign(),
    routes: <String, WidgetBuilder>{
      "/LogInPage": (BuildContext context) => new LogInPage(),
      "/SignUpPage": (BuildContext context) => new SignUpPage(),
    }
  ),
  );
}

