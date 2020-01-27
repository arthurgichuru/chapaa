import 'package:chapaa/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';


import '../LandingScreen.dart';
import '../SetupPassWordScreen.dart';


class LinkAccountoBankSuccessScreen extends StatefulWidget {
  @override
  _LinkAccountoBankSuccessScreenState createState() => _LinkAccountoBankSuccessScreenState();
}

class _LinkAccountoBankSuccessScreenState extends State<LinkAccountoBankSuccessScreen> {

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
                       child: Text('Just like that! ', textAlign:TextAlign.center,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                   ),
                   Container(
                       child: Text('Your account has been \nlinked to your bank.', textAlign:TextAlign.center,style: TextStyle(fontSize: 18),)
                   ),
                 ],
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
                                Text('You’ve just earned 1 Loop tree for \nopening an account with us.',textAlign: TextAlign.start,style: TextStyle(color: Colors.white),),
                              ],
                            ),
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Column(
                  children: <Widget>[
                    Container(
                      width: 400,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: RaisedButtonWidget(
                          buttonColor: Colors.lightGreen,
                          buttonOnpressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanLimitScreen()));
                          },
                          buttonText: 'UNLOCK CREDIT',
                          //buttonColor: Colors.blueAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: FlatButtonWidget(
                        buttonOnpressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LandingScreen()));
                        },
                        buttonText: 'UNLOCK LATER',
                        //buttonColor: Colors.blueAccent,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}
