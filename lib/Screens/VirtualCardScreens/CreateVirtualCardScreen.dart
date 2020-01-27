import 'package:chapaa/Screens/OnboardingScreens/LinkScreens/LinkAccountLandingScreen.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';


class CreateVirtualCardsScreen extends StatefulWidget {
  @override
  _CreateVirtualCardsScreenState createState() => _CreateVirtualCardsScreenState();
}

class _CreateVirtualCardsScreenState extends State<CreateVirtualCardsScreen> {

  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
          Navigator.pop(context,MaterialPageRoute(builder: (context)=>LinkAccountLandingScreen()));
        }),
        backgroundColor: Color(0xff3c6f9c),
        title: Text('Virtual Card'),
      ),
      body: Container(
        child:FlipCard(
          key: cardKey,
          flipOnTouch: true,
          direction: FlipDirection.HORIZONTAL, // default
          front: Center(
            child: Container(
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10)
                  )
                ),
                elevation: 15,
                  child: Container(
                    width: 350,
                      height: 200,
                      child: Text('Front'))),
            ),
          ),
          back: Center(
            child: Container(
                child: Card(
                    elevation: 15,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        )
                    ),
                    child: Container(
                        width: 350,
                        height: 200,
                        child: Text('Back')))
            ),
          ),
        ),
      )
    );
  }
}
