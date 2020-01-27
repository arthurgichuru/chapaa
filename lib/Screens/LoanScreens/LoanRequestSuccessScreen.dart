import 'package:chapaa/Screens/OnboardingScreens/LandingScreen.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';
import 'LoanLimitScreen.dart';

class LoanCreatedSuccessScreen extends StatefulWidget {
  @override
  _LoanCreatedSuccessScreenState createState() => _LoanCreatedSuccessScreenState();
}

class _LoanCreatedSuccessScreenState extends State<LoanCreatedSuccessScreen> {
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
                      child: Text('Loan Request has been processed successfully!', textAlign:TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                  ),
                  SizedBox(height: 10,),
                  Container(
                      child: Text(' Log in to make a payment!', textAlign:TextAlign.center,style: TextStyle(fontSize: 18),)
                  ),
                ],
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonColor: Colors.lightGreen,
                  buttonOnpressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LandingScreen()));
                  },
                  buttonText: 'LOG IN',
                  //buttonColor: Colors.blueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
