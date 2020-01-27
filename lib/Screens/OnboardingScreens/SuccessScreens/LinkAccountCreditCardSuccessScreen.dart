import 'package:chapaa/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import '../LandingScreen.dart';


class LinkAccountCardSuccessScreen extends StatefulWidget {
  @override
  _LinkAccountCardSuccessScreenState createState() => _LinkAccountCardSuccessScreenState();
}

class _LinkAccountCardSuccessScreenState extends State<LinkAccountCardSuccessScreen> {

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
                  SizedBox(height: 10,),
           /*       Container(
                      child: Text(
                        'You qualify for KES 50,000 limit! \nUnlock your credit limit to start transacting today.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18),)
                  ),*/
                ],
              ),
              SizedBox(height: 10,),
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
                                builder: (context) => LoanLimitScreen()));
                          },
                          buttonText: 'UNLOCK CREDIT',
                          //buttonColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FlatButtonWidget(
                        buttonOnpressed: () {
                          Navigator.push(context, MaterialPageRoute(
                              builder: (context) => LandingScreen()));
                        },
                        buttonText: 'UNLOCK LATER',
                        //buttonColor: Colors.blueAccent,
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
