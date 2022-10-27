import 'package:HeathK/BottomNavBar.dart';
import 'package:HeathK/main.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final bmiModel;

  ResultScreen({this.bmiModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  height: 8,
                ),
                Text("Your BMI is ${bmiModel.bmi.round()}", style: TextStyle(color: Colors.black, fontSize: 34, fontWeight: FontWeight.w700),),
                Text("${bmiModel.comments}", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w500),),

                SizedBox(height: 16,),

                bmiModel.isNormal ?
                Text("Hurray! Your BMI is Normal.", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),)
                    :
                Text("Sadly! Your BMI is not Normal.", style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),),
                SizedBox(height: 16,),

                Container(
                  child: RaisedButton.icon(
                    onPressed: (){

                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>BottomNavBar()));
                    },
                    icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                    label: Text("Done"),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 10,
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 16, right: 16),
                )

              ],
            ),
          ),
        )
    );
  }
}