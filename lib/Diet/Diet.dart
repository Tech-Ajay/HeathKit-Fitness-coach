import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';


class Diet extends StatefulWidget {
  @override
  _DietState createState() => _DietState();
}

class _DietState extends State<Diet> {
  int _BreakFast=0;
  int _Morning_snack=0;
  int _Lunch=0;
  int _Evening_Snack=0;
  int _Dinner=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Diet',style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),),
        ) ,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(20.5),
        children: [
          Container(
            width: 300,
            height: 300,

            child: Column(
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

            Padding(
              padding: const EdgeInsets.only(top:12.0),
              child: Text("Calories",style: TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),),
            ),
                ]
                ),
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SleekCircularSlider(

                      min: 0,
                      max: 100,

                      initialValue:image(_BreakFast, _Morning_snack, _Lunch, _Evening_Snack, _Dinner),

                      // appearance: CircularSliderAppearance(
                      //   customColors: CustomSliderColors(trackColor: Colors.black,),

                      ),
                          ],
                ),

                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(imagee(_BreakFast, _Morning_snack, _Lunch, _Evening_Snack, _Dinner).toString()+"/3600 Calories",style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),),
                    ]
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:10.0),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,

                ),
                borderRadius: BorderRadius.circular(12.0)
            ),

            child: Column(
              children: [

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Text("BreakFast",style:TextStyle(
                      color: Colors.black,
                    ) ,),
                    Row(children: [
                      InkWell(
                        onTap: (){
                          setState(() {


                            if(_BreakFast>1)
                            {
                              _BreakFast=_BreakFast-50;

                            }
                            else{
                            }
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "-",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),

                      Text("$_BreakFast/931 Cal",style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:17.0),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            _BreakFast=_BreakFast+50;

                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "+",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),
                    ],

                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Text("Morning Snack",style:TextStyle(
                      color: Colors.black,
                    ) ,),
                    Row(children: [
                      InkWell(
                        onTap: (){
                          setState(() {


                            if(_Morning_snack>1)
                            {
                              _Morning_snack=_Morning_snack-50;

                            }
                            else{
                            }
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "-",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),

                      Text("$_Morning_snack/349 Cal",style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:17.0),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            _Morning_snack=_Morning_snack+50;

                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "+",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),
                    ],

                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Text("Lunch",style:TextStyle(
                      color: Colors.black,
                    ) ,),
                    Row(children: [
                      InkWell(
                        onTap: (){
                          setState(() {


                            if(_Lunch>1)
                            {
                              _Lunch=_Lunch-50;

                            }
                            else{
                            }
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "-",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),

                      Text("$_Lunch/931 Cal",style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:17.0),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            _Lunch=_Lunch+50;

                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "+",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),
                    ],

                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Text("Evening Snack",style:TextStyle(
                      color: Colors.black,
                    ) ,),
                    Row(children: [
                      InkWell(
                        onTap: (){
                          setState(() {


                            if(_Evening_Snack>1)
                            {
                              _Evening_Snack=_Evening_Snack-50;

                            }
                            else{
                            }
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "-",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),

                      Text("$_Evening_Snack/349 Cal",style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:17.0),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            _Evening_Snack=_Evening_Snack+50;

                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "+",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),
                    ],

                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween ,
                  children: [
                    Text("Dinner",style:TextStyle(
                      color: Colors.black,
                    ) ,),
                    Row(children: [
                      InkWell(
                        onTap: (){
                          setState(() {


                            if(_Dinner>1)
                            {
                              _Dinner=_Dinner-50;

                            }
                            else{
                            }
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "-",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),

                      Text("$_Dinner/931 Cal",style:TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize:17.0),
                      ),

                      InkWell(
                        onTap: (){
                          setState(() {
                            _Dinner=_Dinner+50;
                          });
                        },
                        child:Container(
                          width: 40,
                          height: 40,
                          margin: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.blueAccent.withOpacity(0.1)

                          ),
                          child: Center(
                            child: Text(
                              "+",style:TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:17.0,
                            ) ,
                            ),
                          ),
                        ) ,
                      ),
                    ],

                    ),

                  ],
                ),
              ],
            ),
          )
        ],
      ),


    );

  }
  double image(_BreakFast,_Morning_snack,_Lunch,_Evening_Snack,_Dinner)
  {
    int _total=_BreakFast+_Morning_snack+_Lunch+_Evening_Snack+_Dinner;
      double p=_total/3600*100;
      if(_total>3500)
        return (100);
      else
      return (p);
  }
  int imagee(_BreakFast,_Morning_snack,_Lunch,_Evening_Snack,_Dinner)
  {
    int _total=_BreakFast+_Morning_snack+_Lunch+_Evening_Snack+_Dinner;


    return (_total);
  }
}
