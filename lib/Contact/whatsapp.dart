import 'dart:io';

import 'package:HeathK/BottomNavBar.dart';
import 'package:HeathK/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'package:flutter_launch/flutter_launch.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';


void main() => runApp(new MyAppp());

class MyAppp extends StatefulWidget {
  @override
  _MyApppState createState() => new _MyApppState();
}

class _MyApppState extends State<MyAppp> {

  Future<void> _launched;

  void launchWhatsApp(
      {@required int phone,
        @required String message,
      }) async {
    String url() {
      if (Platform.isAndroid) {
        return "https://wa.me/$phone/?text=${Uri.parse(message)}"; // new line
      } else {
        return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}"; // new line
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }



  // Future<void> _launchInWebViewOrVC(String url) async {
  //   if (await canLaunch(url)) {
  //     await launch(
  //       url,
  //       forceSafariVC: true,
  //       forceWebView: true,
  //       headers: <String, String>{'my_header_key': 'my_header_value'},
  //     );
  //   } else {
  //     throw 'Could not launch $url';
  //   }
  // }

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
  initState() {
    super.initState();
  }

  // void whatsAppOpen() async {
  //   bool whatsapp = await FlutterLaunch.hasApp(name: "whatsapp");
  //
  //   if (whatsapp) {
  //     await FlutterLaunch.launchWathsApp(phone: "+917259803673", message: "Hello,");
  //   } else {
  //     print("Whatsapp Unable to Open!");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    const String toLaunch = 'https://www.instagram.com/_healthkit_/';
    const String webtoLaunch = 'https://www.healthkit.online';

    return
    WillPopScope(
    onWillPop: () async {
      Navigator.push(context, MaterialPageRoute(
          builder: (context)=>BottomNavBar()));
    },
      child: Scaffold(
          appBar: new AppBar(

            backgroundColor: Colors.black,
          ),
          backgroundColor: Colors.white,

        body: ListView(
          children:[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Text("Contact Us",style: TextStyle(
                    fontSize: 30,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0,bottom: 30),
                child: Center(
                  child: Text("While We're good with smoke signals, there are simpler ways for us to get in touch and answer your questions",style: TextStyle(
                      fontSize: 15,fontWeight: FontWeight.bold
                  ),),
                ),
              ),
            ),
              Row(
                children:[
                  Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20,),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width-40,

                      child: RaisedButton(
                        color: Colors.transparent,
                        elevation: 10,
                        child: Row(
                          children: <Widget>[
                            Icon(MdiIcons.whatsapp),
                          SizedBox(width: 10,),
                               Text("Whatsapp",style: TextStyle(
                                  color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),

                          ],

                        ),
                        onPressed: () {
                          //whatsAppOpen();
                         launchWhatsApp(phone: 917259803673, message: 'Hello There!!');


                        },
                      ),
                    ),
                  ),
                ],
              ),

            Row(
              children:[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20,),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width-40,
                      child: RaisedButton(
                        color: Colors.transparent,
                        child: Row(
                          children: <Widget>[
                            Icon(MdiIcons.instagram),
                            SizedBox(width: 10,),
                            Text("Instagram",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(toLaunch);
                        }),
                        elevation: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children:[
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left:20.0,right: 20,),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width-40,

                      child: RaisedButton(
                        color: Colors.transparent,

                        // style: ElevatedButton.styleFrom(
                        //   primary: Colors.transparent, // background
                        //   onPrimary: Colors.black, // foreground
                        // ),
                        child: Row(
                          children: <Widget>[
                            Icon(MdiIcons.network),
                            SizedBox(width: 10,),
                            Text("Website",style: TextStyle(
                                color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
                          ],
                        ),
                        onPressed: () => setState(() {
                          _launched = _launchInBrowser(webtoLaunch);
                        }),
                        elevation: 10,

                      ),
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}

//       body: Padding(
//         padding: const EdgeInsets.only(left: 8,top: 8,right: 8,bottom: 8),
//         child: ListView.builder(
//           itemCount: homeButtonRow.length,
//           itemBuilder:(BuildContext context,int index){
//             return Card(
//
//               elevation: 18,
//               color: Colors.transparent,
//               child: ListTile(
//                 leading: CircleAvatar(
//                   backgroundColor: Colors.black,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Icon(icons[index],color: Colors.white,),
//                   ),
//                 ),
//                 title: Text(homeButtonRow[index],style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
//
//                 onTap: ()=>{
//                   if (homeButtonRow[index]=="WhatsAPP")
//                     {
//                        whatsAppOpen(),
//                     }
//                   else if (homeButtonRow[index]=="Instagram")
//                     {
//                          _launched = _launchInWebViewOrVC(toLaunch),
//                     }
//                   else if (homeButtonRow[index]=="Website")
//                       {
//
//                     _launched = _launchInBrowser(webtoLaunch),
//
//
//                       }
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//
//     );
//   }
//}