import 'package:chapaa/Screens/VirtualCardScreens/CreateVirtualCardScreen.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/material.dart';
import 'LinkBankAccountScreen.dart';
import 'LinkCreditCardScreen.dart';

class LinkAccountLandingScreen extends StatefulWidget {
  @override
  _LinkAccountLandingScreenState createState() => _LinkAccountLandingScreenState();
}

class _LinkAccountLandingScreenState extends State<LinkAccountLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3c6f9c),
        title: Text('Link'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDescriptionWidget(
                titleDescription: 'Link your bank card.',
              ),
            ),
            SizedBox(height: 10),
            /*Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.account_balance, color: Colors.green,),
                        Text('Bank Account', style: TextStyle(fontSize: 16),),
                        IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LinkBankAccountScreen()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),*/
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.credit_card,color: Colors.purple,),
                        Text('Bank Card', style: TextStyle(fontSize: 16)),
                        IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LinkCreditCardScreen()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                        Radius.circular(10)
                    )
                ),
                elevation: 10,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.credit_card,color: Colors.deepOrange,),
                        Text('Chapaa Virtual Card', style: TextStyle(fontSize: 16)),
                        IconButton(icon: Icon(Icons.arrow_forward), onPressed: (){
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CreateVirtualCardsScreen()));
                        })
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 200,),
          ],
        ),
      ),
    );
  }
}
