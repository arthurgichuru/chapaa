import 'package:chapaa/widgets/banksDropDownMenuWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/textFieldWidget.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/material.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'LinkAccountLandingScreen.dart';
import '../SuccessScreens/LinkAccountBankSuccessScreen.dart';
import '../SecuredbyVisaScreens/SecuredbyVisaScreenBank.dart';


class LinkBankAccountScreen extends StatefulWidget {
  @override
  _LinkBankAccountScreenState createState() => _LinkBankAccountScreenState();
}

class _LinkBankAccountScreenState extends State<LinkBankAccountScreen> {
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
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3c6f9c),
          title: Text('Bank Account'),
          leading: IconButton(icon: Icon(Icons.close), onPressed: (){
            Navigator.pop(
                context,
                MaterialPageRoute(
                    builder: (context) => LinkAccountLandingScreen()));
          }),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Link your account.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BanksDropDownWidget(),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'Account Number',
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Account Number';
                    }
                    return null;
                  },
                  textInputType: TextInputType.number,
                  maxLength: 15,
                  passwordText: false,
                  helperText: 'Key in your Bank Account number',
                ),
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                    buttonText: 'LINK',
                    buttonColor: Colors.lightGreen,
                    buttonOnpressed: () {
                      if (_formKey.currentState.validate()) {
                        pr.show();
                        Future.delayed(Duration(seconds: 3)).then((value) {
                          pr.hide().whenComplete(() {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    SecuredbyVisaBankScreen()));
                          }
                          );
                        }
                        );
                      }
                    }
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
