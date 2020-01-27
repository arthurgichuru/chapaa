import 'package:chapaa/widgets/debitCardWidget.dart';
import 'package:chapaa/widgets/transactionWidget.dart';
import 'package:flutter/material.dart';
import 'CreateCreditCardMainScreen.dart';

class MainCardScreen extends StatefulWidget {
  @override
  _MainCardScreenState createState() => _MainCardScreenState();
}

class _MainCardScreenState extends State<MainCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      body: Container(
        child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 800,
                  child: ListView(
                    //scrollDirection: Axis.vertical,
                    children: <Widget>[
                      CreditCardWidget(color: "916dd5",
                        number: 1277,
                        image: "visa.png",
                        valid: "VALID 07/25",),
                      CreditCardWidget(color: "8cba51",
                        number: 1254,
                        image: "visa.png",
                        valid: "VALID 07/24",),
                      CreditCardWidget(color: "5d5b6a",
                        number: 9200,
                        image: "master.png",
                        valid: "VALID 10/22",),
                      CreditCardWidget(color: "5d5b6a",
                        number: 9230,
                        image: "master.png",
                        valid: "VALID 10/22",),
                      CreditCardWidget(color: "8cba51",
                        number: 1298,
                        image: "visa.png",
                        valid: "VALID 07/24",),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5,),
             /* Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Transactions this week",
                      style: TextStyle(color: Colors.blueAccent),),
                  ),
                ],
              ),*/
              /*Container(
                  height: 400,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(
                          Icons.local_parking, color: Colors.green,),
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
                        leading: Icon(
                          Icons.directions_bus, color: Colors.cyan,),
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
              )*/
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(
              builder: (context) => CreateCreditCardMainScreen()));
        },
        child: Icon(Icons.add, color: Colors.blueAccent,),
        backgroundColor: Colors.white,

      ),
    );
  }
}

