import 'package:chapaa/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../LandingScreen.dart';


class LinkCardSuccessScreen extends StatefulWidget {
  @override
  _LinkCardSuccessScreenState createState() => _LinkCardSuccessScreenState();
}

class _LinkCardSuccessScreenState extends State<LinkCardSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Success Screen',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50,),
              Center(
                child: Container(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/winner.png')
                ),
              ),
              SizedBox(height: 20,),
              Column(
                children: <Widget>[
                  Container(
                      child: Text(
                        'Your card has been linked!',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),)
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  child: Card(
                    elevation: 10,
                    color: Colors.black,
                    child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Icon(Icons.star, color: Colors.white,),
                              Expanded(
                                child: Text(
                                  'You have earned 100 Loop trees! \nfor linking your card.',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(color: Colors.white),),
                              ),
                            ],
                          ),
                        )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RaisedButtonWidget(
                          buttonColor: Colors.lightGreen,
                          buttonOnpressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => LandingScreen()));
                          },
                          buttonText: 'FINISH',
                          //buttonColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
