import 'package:chapaa/widgets/IdDocumentsDropDownMenuWidget.dart';
import 'package:chapaa/widgets/countryCodesDropDownWidget.dart';
import 'package:chapaa/widgets/datetimeWidget.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/textFieldWidget.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/material.dart';


import '../LoanScreens/BioDataScreen.dart';
import '../LoanScreens/CustomerKYCInfoScreen.dart';
import 'LinkScreens/LinkAccountLandingScreen.dart';
import 'OneTimePinScreen.dart';

class CustomerInfoScreen extends StatefulWidget {
  @override
  _CustomerInfoScreenState createState() =>
      _CustomerInfoScreenState();
}

class _CustomerInfoScreenState extends State<CustomerInfoScreen> {

  final _formKey = GlobalKey<FormState>();

  DateTime selectedDate = DateTime.now();
  final myController = TextEditingController();
  DateTime date1;


  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3c6f9c),
          title: Text('Customer details'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TitleDescriptionWidget(
                  titleDescription: 'Tell us about yourself.',
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFieldWidget(
                  labelText: 'First Name',
                  helperText: 'Name as per ID',
                  maxLength: 30,
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter First Name';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 30,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFieldWidget(
                  labelText: 'Last Name',
                  helperText: 'Name as per ID',
                  maxLength: 30,
                  validate:(value){
                    if(value.isEmpty){
                      return 'Please Enter Last Name';
                    }
                    return null;
                  },
                  textInputType: TextInputType.text,
                  //maxLength: 30,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFieldWidget(
                  labelText: 'Email',
                  helperText: 'We will contact you with this id',
                  maxLength: 30,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Email';
                    }
                    return null;
                  },
                  textInputType: TextInputType.emailAddress,
                  //maxLength: 30,
                  passwordText: false,
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Expanded(
                        flex:1,child: DropDownWidgetCountryCodes()),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFieldWidget(
                  labelText: 'Phone number',
                  helperText: 'We will link this # to your account',
                  maxLength: 10,
                  validate: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Phone #';
                    }
                    return null;
                  },
                  textInputType: TextInputType.phone,
                  //maxLength: 10,
                  passwordText: false,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                  buttonOnpressed: () {
                    if( _formKey.currentState.validate()){
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OneTimePinScreen()));
                    }
                  },
                  buttonText: 'NEXT',
                  buttonColor: Colors.lightGreen,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
