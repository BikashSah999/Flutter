import "package:flutter/material.dart";

class Profile extends StatefulWidget{
  @override
  _ProfileState createState() => new _ProfileState();
}

class _ProfileState extends State<Profile>
{
  @override
  Widget build(BuildContext context) {
    return Material(
      child:Column(
        children:<Widget>[
          //container for profile
          Container(
            // margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*3),
            height:(MediaQuery.of(context).size.height/100)*41,
            color:Colors.red,
          ),

          //container for book ride
          Container(
            height:(MediaQuery.of(context).size.height/100)*20,
             margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*3),
            child:Row(
              children: <Widget>[
               Image.asset('images/scooter.png',
              height:(MediaQuery.of(context).size.height/100)*15, width:(MediaQuery.of(context).size.width/100)*60, alignment: Alignment.center),
              Container(
                 height:(MediaQuery.of(context).size.height/100)*7,
              width:(MediaQuery.of(context).size.width/100)*30,
              child:Material(
                borderRadius: BorderRadius.circular(20.0),
              color: Colors.red,
              child:GestureDetector(
              onTap:(){},
              child:Text("Book Ride",style: TextStyle(fontSize: 20.0,color: Colors.white),),),))
              ],
            )
           
              ),

          //container for play and earn
          Container(
             margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*3),
            height:(MediaQuery.of(context).size.height/100)*20,
            color:Colors.red,
            child:Center(
              child:Column(
              children: <Widget>[
            Container(
              child: GestureDetector(
                        onTap: (){ 
                          
                        },
              child:Text("Play and Earn Coin",style: TextStyle(fontSize: 20.0,color: Colors.white),),
            )
            )
              ]
            )
            )
          ),

          //container for ride history
          Container(
            margin: EdgeInsets.only(top: (MediaQuery.of(context).size.height/100)*3),
            height:(MediaQuery.of(context).size.height/100)*10,
            color:Colors.black,
            
          ),
        ]
      )
    );
  }

}