import "package:flutter/material.dart";
import "./screen_app/lisu.dart";
import "./screen_app/loginpage.dart";
import "./screen_app/signuppage.dart";
import "./screen_app/profile.dart";
import "./screen_app/googlemap.dart";
void main(){
  runApp(MaterialApp(
//     AppConfig.width = MediaQuery.of(context).size.width;
// AppConfig.height = MediaQuery.of(context).size.height;
// AppConfig.blockSize = AppConfig.width / 100;
// AppConfig.blockSizeVertical = AppConfig.height / 100;
    debugShowCheckedModeBanner: false,
    home:Googlemap(),
    routes: <String, WidgetBuilder>{
      "/LogInPage": (BuildContext context) => new LogInPage(),
      "/SignUpPage": (BuildContext context) => new SignUpPage(),
      "/Profile": (BuildContext context) => new Profile(),
      "/Googlemap": (BuildContext context) => new Googlemap(),
    }
  ),
  );
}

