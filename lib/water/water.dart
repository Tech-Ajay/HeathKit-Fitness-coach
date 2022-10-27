import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
  int _waterState = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Water', style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
        ),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body:

      Padding(
        padding: const EdgeInsets.only(top:50.0,left: 20,right: 20),
        child: Center(
          child: Container(
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SleekCircularSlider(

                        min: 0,
                        max: 100,

                        initialValue: image(_waterState).toDouble(),

                        // appearance: CircularSliderAppearance(
                        //   customColors: CustomSliderColors(trackColor: Colors.black,),

                      ),
                    ],
                  ),
                  SizedBox(height: 30,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Water", style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold

                      ),),
                      Row(children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              if (_waterState > 0) {
                                _waterState = _waterState - 1;
                              }
                              else {
                                _waterState = 0;
                              }
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.blueAccent.withOpacity(0.1)

                            ),
                            child: Center(
                              child: Text(
                                "-", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                              ),
                            ),
                          ),
                        ),

                        Text("$_waterState/12 Glasses", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17.0),
                        ),

                        InkWell(
                          onTap: () {
                            setState(() {
                              _waterState = _waterState + 1;
                            });
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            margin: EdgeInsets.all(10.0),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Colors.blueAccent.withOpacity(0.1)

                            ),
                            child: Center(
                              child: Text(
                                "+", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17.0,
                              ),
                              ),
                            ),
                          ),
                        ),
                      ],

                      ),

                    ],


                  ),

                ]
            ),
          ),
        ),
      ),
    );
  }


  int imagee(_waterState) {
    return (_waterState);
  }

  double image(_WaterState){

    double p=_WaterState/12*100;
    if(_WaterState>11)
      return (100);
    else
      return (p);
  }

}

