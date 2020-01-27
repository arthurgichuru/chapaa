import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:flutter/material.dart';
import 'BioDataScreen.dart';
import 'LoanRequestSuccessScreen.dart';
import 'package:progress_dialog/progress_dialog.dart';



class IDDocumentCaptureScreen extends StatefulWidget {
  @override
  _IDDocumentCaptureScreenState createState() => _IDDocumentCaptureScreenState();
}

class _IDDocumentCaptureScreenState extends State<IDDocumentCaptureScreen> {
  ProgressDialog pr;
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
    return MaterialApp(
      title: 'IDDocumentCapture',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3c6f9c),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: (){
            Navigator.pop(context,MaterialPageRoute(builder: (context)=>BioDataScreen()));
          }),
          title: Text('ID Document photo'),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 300,),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: IconButton(icon: Icon(Icons.camera,size: 50,), onPressed: null),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left:15.0),
                    child: Container(child: Text('Capture ID', textAlign: TextAlign.center,)),
                  )
                ],
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: RaisedButtonWidget(
                    buttonText: 'NEXT',
                    buttonColor: Colors.lightGreen,
                    buttonOnpressed: () {
                        pr.show();
                        Future.delayed(Duration(seconds: 3)).then((value) {
                          pr.hide().whenComplete(() {
                            Navigator.push(context, MaterialPageRoute(
                                builder: (context) =>
                                    LoanCreatedSuccessScreen()));
                          }
                          );
                        }
                        );
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
