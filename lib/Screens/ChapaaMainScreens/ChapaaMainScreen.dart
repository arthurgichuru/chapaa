import 'package:chapaa/Screens/OnboardingScreens/LandingScreen.dart';
import 'package:chapaa/Screens/PersonalProfileScreens/PersonalProfileLandingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'CardScreens/CardScreen.dart';
import 'CardScreens/MainCardScreen.dart';
import 'TransactionMainScreen.dart';
import 'dart:io';


class ChapaaMainScreen extends StatefulWidget {
  @override
  _ChapaaMainScreenState createState() => _ChapaaMainScreenState();
}

class _ChapaaMainScreenState extends State<ChapaaMainScreen> {

  int _selectedIndex = 0;

   List<Widget> _widgetOptions = <Widget>[
     TransactionMainScreen(),
     MainCardScreen(),
     PersonalProfileLandingScreen(),
    Text(
      'Implement Settings',
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop:() async{
        SystemNavigator.pop();
        return true;
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ChapaaMainScreen',
        home: Scaffold(
          /*appBar: AppBar(
            backgroundColor: Color(0xff3c6f9c),
            title: Text('Chapaa'),
          ),*/
          body: Center(
                    child: _widgetOptions.elementAt(_selectedIndex),
        ),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.credit_card),
                title: Text('Cards'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                title: Text('Profile'),
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Color(0xff3c6f9c),
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
