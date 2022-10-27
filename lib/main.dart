
import 'dart:async';

import 'package:HeathK/BottomNavBar.dart';
import 'package:HeathK/Personlised%20Diet%20and%20Workout/DietAndWorkout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: 
      ThemeData(primaryColor: Colors.red,accentColor: Colors.yellowAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 2),()=>  Navigator.push(context, MaterialPageRoute(
        builder: (context)=>BottomNavBar())),);
  }
  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    Timer(Duration(seconds: 2),()=>  Navigator.push(context, MaterialPageRoute(
        builder: (context)=>BottomNavBar())),);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.black),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
    child: Image(image: AssetImage('assets/images/healthkitlogo.jpg'),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top:10.0),
                        ),
                        Text("Health Kit",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),)
                      ],
                    ),
              ),
              ),
              Expanded(flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Padding(padding: EdgeInsets.only(top:20),),
                      Text("A Happier You",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold

                      ),)
                    ],
                  ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
