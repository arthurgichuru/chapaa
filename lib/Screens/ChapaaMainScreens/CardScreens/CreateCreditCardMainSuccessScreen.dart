import 'package:chapaa/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';

import 'CardScreen.dart';

class CreateCreditCrdMainSuccessScreen extends StatefulWidget {
  @override
  _CreateCreditCrdMainSuccessScreenState createState() => _CreateCreditCrdMainSuccessScreenState();
}

class _CreateCreditCrdMainSuccessScreenState extends State<CreateCreditCrdMainSuccessScreen> {

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
              Container(
                  child: Text(
                    'Your account has been linked to your Card!',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18),)
              ),
              SizedBox(height: 100,),
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
                              Text(
                                'You’ve just earned 1 Loop tree for \nopening an account with us.',
                                textAlign: TextAlign.start,
                                style: TextStyle(color: Colors.white),),
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
                        padding: const EdgeInsets.all(15.0),
                        child: RaisedButtonWidget(
                          buttonColor: Colors.lightGreen,
                          buttonOnpressed: () {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) => CardScreen()));
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
