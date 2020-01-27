import 'package:chapaa/widgets/debitCardWidget.dart';
import 'package:chapaa/widgets/transactionWidget.dart';
import 'package:flutter/material.dart';

import 'CreateCreditCardMainScreen.dart';

class CardScreen extends StatefulWidget {
  @override
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
            child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                color: Color(0xff3c6f9c),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60)),
              ),
            ),
                SafeArea(
                    child: ListView(children: <Widget>[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "My Cards \n",
                                    style: TextStyle(color: Colors.white, fontSize: 30,),),
                              ]
                              ),
                            ),
                          ),
                              IconButton(
                                  icon: Icon(
                                    Icons.more_vert,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  onPressed: () {

                                  })
                            ]),
                            SizedBox(
                              height: 10,
                            ),
                              Container(
                                height: 200,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: <Widget>[
                                    CreditCardWidget(color: "916dd5", number: 1277, image: "visa.png", valid: "VALID 07/25",),
                                    CreditCardWidget(color: "8cba51", number: 1254, image: "visa.png", valid: "VALID 07/24",),
                                    CreditCardWidget(color: "5d5b6a", number: 9200, image: "master.png", valid: "VALID 10/22",),
                                    CreditCardWidget(color: "5d5b6a", number: 9230, image: "master.png", valid: "VALID 10/22",),
                                  ],
                                ),
                              ),
                                  SizedBox(height: 5,),
                                  Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text("Transactions this week", style: TextStyle(color: Colors.blueAccent),),
                                      ),
                                    ],
                                  ),
                              Container(
                                  height: 400,
                                  child: ListView(
                                    children: <Widget>[
                                      ListTile(
                                        leading: Icon(Icons.local_parking, color: Colors.green,),
                                        title: Text('KES: 270'),
                                        subtitle: Text('Parking'),
                                        trailing: Text('CARD'),
                                      ),
                                      Divider(),
                                      ListTile(
                                        leading: Icon(Icons.beach_access, color: Colors.red,),
                                        title: Text('KES: 10,000'),
                                        subtitle: Text('Holiday'),
                                        trailing: Text('CARD'),
                                      ),
                                      ListTile(
                                        leading: Icon(Icons.fastfood, color: Colors.brown,),
                                        title: Text('KES: 10,000'),
                                        subtitle: Text('Java'),
                                        trailing: Text('CARD'),
                                      ),
                                      Divider(),
                                      ListTile(
                                        leading: Icon(Icons.directions_bus, color: Colors.cyan,),
                                        title: Text('KES: 500'),
                                        subtitle: Text('Bupass'),
                                        trailing: Text('CARD'),
                                      ),
                                      Divider(),
                                      ListTile(
                                        leading: Icon(Icons.local_taxi, color: Colors.purple,),
                                        title: Text('KES: 900'),
                                        subtitle: Text('Uber'),
                                        trailing: Text('CARD'),
                                      ),
                                      Divider(),
                                      ListTile(
                                        leading: Icon(Icons.movie, color: Colors.blueAccent,),
                                        title: Text('KES: 1,000'),
                                        subtitle: Text('Netflix'),
                                        trailing: Text('CARD'),
                                      ),
                                      Divider(),
                                      TransactionWidget()
                                    ],
                                  )
                              )
                            ]))
                          ],
            )),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateCreditCardMainScreen()));
        },
        child: Icon(Icons.add),
      backgroundColor: Color(0xff3c6f9c),

        ),
    );
  }
}
