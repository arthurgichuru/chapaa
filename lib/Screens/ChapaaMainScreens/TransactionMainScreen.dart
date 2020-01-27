import 'package:chapaa/Screens/AirtimeTopUpScreen/AirtimeTopUpScreen.dart';
import 'package:chapaa/Screens/FoodDrinkScreens/FoodDrinkLandingScreen.dart';
import 'package:chapaa/Screens/LoanScreens/LoanLimitScreen.dart';
import 'package:chapaa/Screens/OnboardingScreens/LandingScreen.dart';
import 'package:chapaa/Screens/OnboardingScreens/LinkScreens/LinkCreditCardScreen.dart';
import 'package:chapaa/Screens/PayScreen/PaybyCodeScreen/PaybyCodeScreen.dart';
import 'package:chapaa/Screens/PayScreen/ScanToPayScreen/ScantoPayLandingScreen.dart';
import 'package:chapaa/Screens/UtilitiesScreen/UtilitiesLandingScreen.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:badges/badges.dart';


class TransactionMainScreen extends StatefulWidget {
  @override
  _TransactionMainScreenState createState() => _TransactionMainScreenState();
}

class _TransactionMainScreenState extends State<TransactionMainScreen> {
  String barcode = "";
  final decoration = BoxDecoration(
     /* border: Border.all(
          //color: Colors.orange,
          //width: 2
      ),*/
      //shape: BoxShape.circle
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(children: <Widget>[
            //trying to show a card link bubble
           /* SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 130,
                  child: Card(
                    color: Colors.blueAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          topRight: Radius.circular(15)),
                    ),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Link your card', style: TextStyle(color: Colors.white),  textAlign: TextAlign.center,),
                    ),
                  ),
                ),
              ],
            ),*/
            SizedBox(height: 50,),
            //Top Bar with ScanQR and Merchant Till
            Row(
              children: <Widget>[
                //Scan to Pay
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScantoPayLandingScreen()));
                    },
                    child: Card(
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15)),
                      ),
                      elevation: 10,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        // Image.asset('images/scanqr.png', height: 50, width: 50,),
                                        IconButton(icon: Icon(MdiIcons.qrcodeScan, color: Colors.white,size: 40,), onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => ScantoPayLandingScreen()));
                                        })
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Scan to pay', style: TextStyle(color: Colors.white),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]
                      ),
                    ),
                  ),
                ),
                //Pay by Code
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PaybyCodeScreen()));
                    },
                    child: Card(
                      color: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomLeft: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(15)),
                      ),
                      elevation: 10,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Container(
                                child: Column(
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        // Image.asset('images/scanqr.png', height: 50, width: 50,),
                                        IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,size: 40,), onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => PaybyCodeScreen()));

                                        })
                                      ],
                                    ),
                                    Row(
                                      children: <Widget>[
                                        SizedBox(height: 10,),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text('Merchant Till', style: TextStyle(color: Colors.white),),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
                Expanded(
                  child: ListView(
                    children: <Widget>[
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Powered by Chapaa', style: TextStyle(color: Colors.black54, fontSize: 10), textAlign: TextAlign.left,)),
                      )),
                      Divider(
                        height: 5.0,
                        color: Colors.black12,
                        thickness: 3,
                      ),
                      Row(
                        children: <Widget>[
                          //Food and drink
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Badge(
                                          badgeColor: Colors.deepOrange,
                                          shape: BadgeShape.square,
                                          borderRadius: 10,
                                          toAnimate: true,
                                          badgeContent:
                                          Text('10% Disc', style: TextStyle(color: Colors.white, fontSize: 8)),
                                          child: IconButton(icon: Icon(MdiIcons.food,color: Colors.blue,size: 35,), onPressed: (){
                                           Navigator.push(context, MaterialPageRoute(builder: (context) => FoodDrinkLandingScreen()));
                                          }),
                                        ),
                                      ),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Food & drink',
                                      style: TextStyle(fontSize: 12) ,
                                    )
                                  ],
                                ),
                              )),
                          //Parking
                          Expanded(
                              flex: 1,
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    child: Badge(
                                        badgeColor: Colors.deepOrange,
                                        shape: BadgeShape.square,
                                        borderRadius: 10,
                                        toAnimate: true,
                                        badgeContent:
                                        Text('In 7 malls', style: TextStyle(color: Colors.white, fontSize: 8)),
                                        child: IconButton(icon: Icon(MdiIcons.parking, color: Colors.blue,size: 25,), onPressed: (){})),
                                  ),
                                  // SizedBox(height: 10,),
                                  Text(
                                    'Parking',
                                    style: TextStyle(fontSize: 12),
                                  )
                                ],
                              )),
                          //Recharge
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Badge(
                                        badgeColor: Colors.deepOrange,
                                        shape: BadgeShape.square,
                                        borderRadius: 10,
                                        toAnimate: true,
                                        badgeContent:
                                        Text('Free', style: TextStyle(color: Colors.white, fontSize: 8)),
                                        child: IconButton(icon: Icon(MdiIcons.cellphoneAndroid,color: Colors.blue,size: 25,), onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => AirtimeTopUpScreen()));
                                        }),
                                      ),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Recharge',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )),
                          //Utilities
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Badge(
                                        badgeColor: Colors.deepOrange,
                                        shape: BadgeShape.square,
                                        borderRadius: 10,
                                        toAnimate: true,
                                        badgeContent:
                                        Text('Free', style: TextStyle(color: Colors.white, fontSize: 8)),
                                        child: IconButton(icon: Icon(MdiIcons.waterOutline,color: Colors.blue,size: 35,), onPressed: (){
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(builder: (context) => UtilitiesLandingScreen()));
                                        }),
                                      ),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Utilities',
                                      style: TextStyle(fontSize: 12) ,
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: <Widget>[
                          //Credit
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Badge(
                                        badgeColor: Colors.deepOrange,
                                        shape: BadgeShape.square,
                                        borderRadius: 10,
                                        toAnimate: true,
                                        badgeContent:
                                        Text('Pay later', style: TextStyle(color: Colors.white, fontSize: 8)),
                                        child: IconButton(icon: Icon(MdiIcons.cashUsdOutline, color: Colors.blue,size: 30,), onPressed: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoanLimitScreen()));
                                        }),
                                      ),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Credit',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              )
                          ),
                          //Rail
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: IconButton(icon: Icon(MdiIcons.train, color: Colors.blue,size: 30,), onPressed: (){}),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Rail',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )),
                          //Deals
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Badge(
                                          badgeColor: Colors.deepOrange,
                                          shape: BadgeShape.square,
                                          borderRadius: 10,
                                          toAnimate: true,
                                          badgeContent:
                                          Text('Cash back', style: TextStyle(color: Colors.white, fontSize: 8)),
                                          child: IconButton(icon: Icon(MdiIcons.sale, color: Colors.blue,size: 30,), onPressed: (){
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(builder: (context) => LandingScreen()));
                                          }),
                                        ),
                                      ),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'Deals',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              )
                          ),
                         //More
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      child: IconButton(icon: Icon(MdiIcons.appsBox,color: Colors.blue,size: 30,), onPressed: (){}),
                                    ),
                                    //SizedBox(height: 10,),
                                    Text(
                                      'More',
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                      //Promo Cards
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        height: 100.0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                width: 300,
                                height: 60,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                  //elevation: 10,
                                  color: Colors.lightBlueAccent,
                                  child: ListTile(
                                    leading: Image.asset('images/hotsale.png', height: 30, width: 30,),
                                    title: Text('Cash back deals'),
                                  ) ,
                                ),
                              ),
                              Container(
                                width: 300,
                                height: 60,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(15),
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topRight: Radius.circular(15)),
                                  ),
                                  //elevation: 10,
                                  color: Colors.lightGreenAccent,
                                  child: ListTile(
                                    leading: Image.asset('images/hotsale.png', height: 30, width: 30,),
                                    title: Text('Hot Discounts'),
                                  ) ,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      //Divider
                      Center(child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Powered by Third Party Providers', style: TextStyle(color: Colors.black54, fontSize: 10), textAlign: TextAlign.left,)),
                      )),
                      Divider(
                        height: 5.0,
                        color: Colors.black12,
                        thickness: 3,
                      ),
                      SizedBox(height: 20,),
                      //Third Party Apps
                      Row(
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: <Widget>[
                                    Badge(
                                      badgeColor: Colors.deepOrange,
                                      shape: BadgeShape.square,
                                      borderRadius: 10,
                                      toAnimate: true,
                                      badgeContent:
                                      Text('Upto KES 3M Loan', style: TextStyle(color: Colors.white, fontSize: 8)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Image.asset('images/loop.jpg', height: 30,width: 30,),
                                          //child: IconButton(icon: Icon(MdiIcons.sale, color: Colors.blue,size: 30,), onPressed: (){}),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      'Loop',
                                      style: TextStyle(fontSize: 12),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  children: <Widget>[
                                    Badge(
                                      badgeColor: Colors.deepOrange,
                                      shape: BadgeShape.square,
                                      borderRadius: 10,
                                      toAnimate: true,
                                      badgeContent:
                                      Text('Hustle Free', style: TextStyle(color: Colors.white, fontSize: 8)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Image.asset('images/insure.png', height: 30,width: 30,),
                                          //child: IconButton(icon: Icon(MdiIcons.train, color: Colors.blue,size: 30,), onPressed: (){}),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      'Insurance',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    Badge(
                                      badgeColor: Colors.deepOrange,
                                      shape: BadgeShape.square,
                                      borderRadius: 10,
                                      toAnimate: true,
                                      badgeContent:
                                      Text('Lipa pole pole', style: TextStyle(color: Colors.white, fontSize: 8)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Container(
                                          child: Image.asset('images/lipalater.jpeg', height: 30,width: 30,),
                                          //child: IconButton(icon: Icon(MdiIcons.train, color: Colors.blue,size: 30,), onPressed: (){}),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 2,),
                                    Text(
                                      'Lipa Later',
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              )),
                        ],
                      ),
                      SizedBox(height: 70,),
                    ],
                  ),
                ),
      ])),
    );
  }

  void _showDialog(String touchme) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(touchme),
            content: Text(touchme),
            actions: <Widget>[
              FlatButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
