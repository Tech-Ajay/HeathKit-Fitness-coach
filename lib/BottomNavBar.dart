import 'package:HeathK/Contact/whatsapp.dart';
import 'package:HeathK/Home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final _pageOption = [
    HomePage(),
    MyAppp(),

  ];


  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          bottomNavigationBar: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50.0,
            items: <Widget>[
              Icon(Icons.home, size: 30,color: Colors.white,),
              Icon(Icons.phone, size: 30,color: Colors.white,),
            ],
            color: Colors.black,
            buttonBackgroundColor: Colors.black,
            backgroundColor: Colors.white,
            animationCurve: Curves.easeIn,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
              });
            },
            letIndexChange: (index) => true,
          ),
          body: _pageOption[_page]


      ),
    );
  }
}