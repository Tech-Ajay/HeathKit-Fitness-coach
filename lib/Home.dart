import 'package:HeathK/BMI/BMICalculatorScreen.dart';
import 'package:HeathK/Diet/Diet.dart';
import 'package:HeathK/Personlised%20Diet%20and%20Workout/DietAndWorkout.dart';
import 'package:HeathK/water/water.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final List homeButtonRow=[
        "Food Tracker",
        "Water Tracker",
    "Personalized Diet and Workout",
    "BMI Calculator",

  ];
  final icons =[
    MdiIcons.food,
    MdiIcons.water,
    MdiIcons.foodVariantOff,
    Icons.calculate,

  ];


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => false,
    child: Scaffold(
      appBar: new AppBar(

        title: Center(
          child: Text('HealthKit',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
          ),),
        ) ,
    // new AppBar(
    // leading: new IconButton(
    // icon: new Icon(Icons.arrow_back),
    // onPressed: (){Navigator.pop(context,true)}
    // ),
        backgroundColor: Colors.black,
      ),
      backgroundColor:Colors.white,




      body: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,

          children:[
            Padding(
              padding: const EdgeInsets.only(top:18.0),
              child: Container(
                child: Center(
                  child: Text("A Happier You",style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                  )),
                ),
              ),
            ),
        SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left:10.0,top: 3,right:10.0,bottom:20),
              child: Container(
                color: Colors.black,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Text("Our passion is to guide people towards a healthier lifestyle.Everybody is unique, "
                        "with their own strengths and limitation. "
                        "Our method is to build a custom plan based on your health,schedule and more importantly, "
                        "fitness goals.  ",style: TextStyle(
                        fontSize: 15,color: Colors.white
                    ),textAlign: TextAlign.justify),
                  ),
                ),
              ),
            ),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),

    Padding(
                   padding: const EdgeInsets.only(left: 8,top: 8,right: 8,bottom: 8),
                   child: ListView.builder(
                     shrinkWrap: true,
                     physics: const ClampingScrollPhysics(),


                     //scrollDirection: Axis.vertical,

                     itemCount: homeButtonRow.length,
                     itemBuilder:(BuildContext context,int index){

                       // return

                         return Card(
                           color: Colors.transparent,
                           elevation: 15,
                           child: ListTile(

                               leading: CircleAvatar(
                                 backgroundColor: Colors.transparent,
                                 child: Container(
                                   decoration: BoxDecoration(
                                       color: Colors.transparent,
                                       borderRadius: BorderRadius.circular(20),
                                   ),
                                   child: Icon(icons[index],color: Colors.black,),
                                 ),
                               ),
                               title: Text(homeButtonRow[index],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),

                               onTap: ()=>{
                                 if (homeButtonRow[index]=="Food Tracker")
                                   {
                                     Navigator.push(context, MaterialPageRoute(
                                         builder: (context)=>Diet())),
                                   }
                                 else if (homeButtonRow[index]=="Water Tracker")
                                     {
                                       Navigator.push(context, MaterialPageRoute(
                                           builder: (context)=>Water())),
                                     }
                                   else if (homeButtonRow[index]=="Personalized Diet and Workout")
                                       {
                                         Navigator.push(context, MaterialPageRoute(
                                             builder: (context)=>DietAndWorkout())),

                                       }
                                   else if (homeButtonRow[index]=="BMI Calculator")
                                       {
                                         Navigator.push(context, MaterialPageRoute(
                                             builder: (context)=>BMICalculatorScreen())),
                                       }
                                     // else if (homeButtonRow[index]=="Contact Us")
                                     //     {
                                     //       Navigator.push(context, MaterialPageRoute(
                                     //           builder: (context)=>MyApp())),
                                     //
                                     //     }
                               },
                             ),
                         );

                     },
                   ),
                 ),
            SizedBox(height: 10),
            Divider(
              color: Colors.black,
              thickness: 3,
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15,bottom: 15,top: 20),
              child: Container(
                color: Colors.black,

                child: InkWell(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image(image: AssetImage('assets/images/ads.jpeg')),
                    ),
                  ),
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>DietAndWorkout()));
                  },
                ),
              ),
            ),
],
      ),
    ),
    );
  }
}







