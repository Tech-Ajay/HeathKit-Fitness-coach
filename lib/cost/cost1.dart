import 'package:HeathK/Contact/whatsapp.dart';
import 'package:HeathK/Payment.dart';
import 'package:HeathK/Paymenttt.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class cost1 extends StatefulWidget {
  @override
  _cost1State createState() => _cost1State();
}

class _cost1State extends State<cost1> {
  Future<void> _launched;
  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {

    const String webtoLaunch = 'https://docs.google.com/forms/d/e/1FAIpQLSd19XeF0xhT6iWFjEKj35CN9T2CT28H-NA_C2DR6amNZ8pv8A/viewform?usp=sf_link';


    return Scaffold(
      appBar: AppBar(
        title: Text("Diet",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
        backgroundColor: Colors.black,
      ),
body: ListView(
    scrollDirection: Axis.vertical,
    shrinkWrap: true,
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),

          child: Column(
            children: [
              // Container(
              //   color: Colors.black,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: Center(
              //       child: Text('Pricing',style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 30,
              //           fontWeight: FontWeight.bold
              //       ),),
              //     ),
              //   ),
              // ),

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
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width-40,

                child: Container(
                  color: Colors.black,

                    child: ListView(
                      shrinkWrap: true,
                      physics: const ClampingScrollPhysics(),
                      children: [
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Proceed further:-\n'
                            'Step 1:- Fill in the Google Forms',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                          ),textAlign: TextAlign.left,),
                      ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                          color: Colors.white,child: Text("Google Form",style: TextStyle(
                            fontSize: 18,color: Colors.black
                          ),),
                              onPressed:(){
                                _launched = _launchInBrowser(webtoLaunch);

                          }),
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Step 2:- Complete The Payment For Completing The Process',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                            ),textAlign: TextAlign.left,),
                        ),
                        Center(
                          child: FlatButton(
                              color: Colors.white,child: Text("Contact Trainer!",style: TextStyle(
                              fontSize: 10,color: Colors.black
                          ),),
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>MyAppp()));
                              }),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(
                              color: Colors.white,child: Text("Payment Gateway",style: TextStyle(
                              fontSize: 18,color: Colors.black
                          ),),
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (context)=>Appp()));                     }),
                        ),



                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      Divider(
        color: Colors.black,
        thickness: 5,
      ),
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,top: 10,bottom: 10),
          child: Text('Our Trainers will get back to you according to the details mentioned within 24hrs ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),textAlign: TextAlign.left,),
        ),
      ),
      Container(
        color: Colors.white,

        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20,bottom: 10),
          child: Text('A Personalized Diet and Workout Would be made for You according to your body type to attain your fitness goal in the shortest way possible.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 15,
            ),textAlign: TextAlign.left,),
        ),
      ),
      Divider(
        color: Colors.black,
        thickness: 5,
      ),
    ],
),
    );
  }
}
