import 'package:HeathK/cost/cost.dart';
import 'package:HeathK/cost/cost1.dart';
import 'package:flutter/material.dart';

class DietAndWorkout extends StatefulWidget {
  @override
  _DietAndWorkoutState createState() => _DietAndWorkoutState();
}

class _DietAndWorkoutState extends State<DietAndWorkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personalized Diet and Workout",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Center(
                    child: Text('Diet',style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold
      ),),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Get Fit Fast',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Conducts in-service training for professional staff by reviewing special diet plans; '
                          'presenting latest research on nutrition-related subjects,introducing new nutrition programs and services.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                      ),textAlign: TextAlign.justify,),
                    ),
                  ),
                ],
              ),

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15,bottom: 15,top: 20),
            child: Container(
              color: Colors.black,

              child: InkWell(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/images/diet.png')),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
                title: Text("Get Personalized Diet", style: TextStyle(
             color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.bold
                ),textAlign: TextAlign.center,),
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context)=>cost1()));
                },
            tileColor: Colors.black,
            ),

          ),

          Divider(
            color: Colors.black,
            thickness: 3,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.black,
              child: Column(
                children: [
                  Center(
                    child: Text('Workout',style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Sculpt Your Body',style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('A Fitness Trainer creates tailored fitness and wellness plans for individuals and groups. '
                          'They assign exercise routines based on clients physical needs and monitor their progress.',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),textAlign: TextAlign.justify,),
                    ),
                  ),
                ],
              ),

            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left:15.0,right: 15,bottom: 15,top: 20),
            child: Container(
              color: Colors.black,

              child: InkWell(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image(image: AssetImage('assets/images/workout.png')),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text("Get Personalized Workout", style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
              ),textAlign: TextAlign.center,),
              onTap:(){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>cost()));

              },
              tileColor: Colors.black,
            ),

          ),

        ],



      ),
    );
  }
}
