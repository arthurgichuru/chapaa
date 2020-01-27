import 'package:chapaa/Screens/ChapaaMainScreens/ChapaaMainScreen.dart';
import 'package:chapaa/Screens/ChapaaMainScreens/TransactionMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'LandingScreen.dart';

class AdvertScreen extends StatefulWidget {
  @override
  _AdvertScreenState createState() => _AdvertScreenState();
}

class _AdvertScreenState extends State<AdvertScreen> {


  List<PageViewModel>getPages(){
    return[
      PageViewModel(
        decoration: const PageDecoration(
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          bodyTextStyle: TextStyle(color: Colors.black)
        ),
        image: Center(
            child: Image.asset("images/money.png", height: 150,width: 150,)),
        title: 'Don\'t carry cash anymore.',
        body: 'Cash is clunky, dirty and difficult to carry around. Chapaa is the easy way to make payments. Kiss goodbye the hustle.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.black)
        ),
        image: Center(child: Image.asset("images/discounts.png",height: 150,width: 150,)),
        title: 'Pay with Chapaa and get rewarded.',
        body: 'Chapaa has partnered with your favourite businesses to bring you offers and discounts. Pay with Chapaa and enjoy these stunning rewards.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.black)
        ),
        image: Center(child: Image.asset("images/link.png", width: 150,height: 150,)),
        title: 'Pay straight from your bank account or M-PESA.',
        body: 'Chapaa allows you to link your bank account or M-PESA wallet so that you can make payments from single control pannel.Say goodbye to carrying many cards and keeping track of all those passwords.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
      PageViewModel(
        decoration: const PageDecoration(
            titleTextStyle: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(color: Colors.black)
        ),
        image: Center(child: Image.asset("images/investment.png",height: 150,width: 150,)),
        title: 'Get an overdraft on the spot.',
        body: 'Low on cash in your bank account or M-Pesa? Chapaa will sort you on the spot so that you can pay for your goods and services now and your pay your Chapaa overdraft later.',
        //footer: Text('Your business partner', style: TextStyle(color:Colors.black),)
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        //globalBackgroundColor: Color(0xff3c6f9c),
        pages: getPages(

        ),
        showSkipButton: true,
        skip: const Text("SKIP",style: TextStyle(fontSize: 18,color: Colors.black)),
        done: Text('DONE',style: TextStyle(fontSize: 18, color: Colors.black),
        ),
        onDone: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChapaaMainScreen()));
        },
        dotsDecorator: DotsDecorator(
          size: const Size.square(10.0),
          activeSize: const Size(20.0, 10.0),
          color: Colors.blueAccent,
          activeColor: Colors.red,
          spacing: const EdgeInsets.symmetric(horizontal: 3.0),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0)
          ),
        ),
      ),
    );
  }
}
