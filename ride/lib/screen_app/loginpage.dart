import 'dart:convert';
import 'dart:io';
import "package:flutter/material.dart";
import "package:http/http.dart" as http;

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => new _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
   final _formKey = GlobalKey<FormState>();
 TextEditingController _ctrlNumber = TextEditingController();
  TextEditingController _ctrlPassword = TextEditingController();
 String msg='';

 _login() async{
       String number = _ctrlNumber.text;
       String password = _ctrlPassword.text;

   try {
     http.Response response = await http.get("http://192.168.1.66:3000/customers/login/usernum/$number/userpassword/$password");
     var json = jsonDecode(response.body);
   // print(json);
     if(json.length!=0)
     {
        Navigator.of(context).pushReplacementNamed("/Profile");
     }
     else{
       setState(()
       {
          msg="Login Fail";
       });
     }
   }
   catch(e)
   {
     print(e);
   }
 }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*20),
        child: Form(
         key: _formKey,
          child: Column(
          children: <Widget>[
            Image.asset('images/logo.png',
                height: (MediaQuery.of(context).size.height/100)*25, width: (MediaQuery.of(context).size.width/100)*60, alignment: Alignment.center),
           Container(
             margin: EdgeInsets.only(/*top:(MediaQuery.of(context).size.height/100)*1,*/left:(MediaQuery.of(context).size.height/100)*5,right:(MediaQuery.of(context).size.height/100)*5,), 
            child:TextFormField(
              validator: (value) {
                if(value.isEmpty){
                  return 'Please Enter The Number';
                }
              },
              keyboardType: TextInputType.number,
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
           ),
            Container(
              margin: EdgeInsets.only(top:(MediaQuery.of(context).size.height/100)*1,left:(MediaQuery.of(context).size.height/100)*5,right:(MediaQuery.of(context).size.height/100)*5,),
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
                height: (MediaQuery.of(context).size.height/100)*7,
                width: (MediaQuery.of(context).size.width/100)*40,
                margin: EdgeInsets.only(top:(MediaQuery.of(context).size.height/100)*5),
                child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.red,
                    child: GestureDetector(
                        onTap: (){ 
                          if (_formKey.currentState.validate()){
                          _login();
                          }
                        },
                        child: Center(
                            child: Text("LOGIN",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )))))),
                      // Container(
                      //   height: 40.0,
                      //  width: 150.0,
                      //  margin: EdgeInsets.only(top: 20.0),
                      //  child: Text(msg,style:TextStyle(fontSize:20.0,color:Colors.red),
                      // )
                      // ),
          ],
        ),
        ),
      ),
    );
  }
}
