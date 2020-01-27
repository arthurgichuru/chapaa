import 'package:chapaa/widgets/IdDocumentsDropDownMenuWidget.dart';
import 'package:chapaa/widgets/datetimeWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/textFieldWidget.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/material.dart';
import 'BioDataScreen.dart';
import 'LoanLimitScreen.dart';
import 'LoanRequestSuccessScreen.dart';
import 'package:progress_dialog/progress_dialog.dart';

class CustomerKYCInfoScreen extends StatefulWidget {
  @override
  _CustomerKYCInfoScreenState createState() => _CustomerKYCInfoScreenState();
}

class _CustomerKYCInfoScreenState extends State<CustomerKYCInfoScreen> {
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
          leading: IconButton(
              icon: Icon(Icons.clear),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoanLimitScreen()));
              }),
          //backgroundColor: Color(0xffff5722),
          title: Text('Personal details'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TitleDescriptionWidget(
                  titleDescription:
                      'Lets collect some details necessary for loan processing.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropDownWidget(),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'ID Number',
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter ID #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFieldWidget(
                  labelText: 'KRA Pin',
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter KRA Pin';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DateTimeWidget(
                  labelText: 'Date of Birth',
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 350,
                  child: RaisedButtonWidget(
                      buttonText: 'REQUEST',
                      buttonColor: Colors.lightGreen,
                      buttonOnpressed: () {
                        pr.show();
                        Future.delayed(Duration(seconds: 3)).then((value) {
                          pr.hide().whenComplete(() {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    BioDataScreen()));
                          });
                        });
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
