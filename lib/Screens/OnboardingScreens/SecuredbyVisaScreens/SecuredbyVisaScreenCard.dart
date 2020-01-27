import 'package:chapaa/Screens/OnboardingScreens/SuccessScreens/LinkCardSuccessScreen.dart';
import 'package:chapaa/widgets/flatButtonWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/textFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import '../SuccessScreens/LinkAccountCreditCardSuccessScreen.dart';


class SecuredbyVisaCardScreen extends StatefulWidget {
  @override
  _SecuredbyVisaCardScreenState createState() => _SecuredbyVisaCardScreenState();
}

class _SecuredbyVisaCardScreenState extends State<SecuredbyVisaCardScreen> {
  ProgressDialog pr;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    //create the progress bar
    pr = new ProgressDialog(context);
    pr.style(
        message: 'Please hold on....',
        borderRadius: 10.0,
        backgroundColor: Colors.white,
        progressWidget: CircularProgressIndicator(),
        elevation: 10.0,
        insetAnimCurve: Curves.easeInOut,
        progress: 0.0,
        maxProgress: 100.0,
        progressTextStyle: TextStyle(
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w400),
        messageTextStyle: TextStyle(
            color: Colors.black, fontSize: 19.0, fontWeight: FontWeight.w600));
    return Scaffold(
      appBar: AppBar(
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
                              builder: (context) => LinkCardSuccessScreen()));
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
