import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/textFieldWidget.dart';
import 'package:flutter/material.dart';
import 'CardScreens/CreateCreditCardMainScreen.dart';
import 'CardScreens/CreateCreditCardMainSuccessScreen.dart';


class SecuredByVisaMainScreen extends StatefulWidget {
  @override
  _SecuredByVisaMainScreenState createState() => _SecuredByVisaMainScreenState();
}

class _SecuredByVisaMainScreenState extends State<SecuredByVisaMainScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.clear), onPressed: (){
          Navigator.pop(context, MaterialPageRoute(builder: (context)=>CreateCreditCardMainScreen()));
        }),
        backgroundColor: Color(0xff3c6f9c),
        title: Text('Visa Secure'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 30,),
            /*Padding(
              padding: const EdgeInsets.all(8.0),
              child: TitleDescriptionWidget(
                titleDescription: 'Lets verify your phone \nnumber.',
              ),
            ),*/
            SizedBox(height: 20),
            Image.asset("images/verifiedbyvisa.png", height: 100,width: 100,),
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(left:25.0,right: 25.0),
              child: TextFieldWidget(
                textInputType: TextInputType.number,
                maxLength: 4,
                passwordText: true,
                labelText: 'One time pin',
                helperText: 'Key in the 4 digit pin sent through SMS',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right:25.0, left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButtonWidget(
                    buttonText: 'SEND AGAIN',
                    buttonOnpressed: (){},
                  ),RaisedButtonWidget(
                    buttonText: 'VERIFY',
                    buttonOnpressed: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CreateCreditCrdMainSuccessScreen()));
                    },
                    buttonColor: Colors.lightGreen,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
