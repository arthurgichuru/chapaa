import 'package:chapaa/Screens/ChapaaMainScreens/ChapaaMainScreen.dart';
import 'package:chapaa/widgets/raisedbuttonWidget.dart';
import 'package:chapaa/widgets/titleDescriptionWidget.dart';
import 'package:flutter/material.dart';
import 'package:finance/finance.dart';
import 'package:progress_dialog/progress_dialog.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'CustomerKYCInfoScreen.dart';
import 'LoanRequestSuccessScreen.dart';


class LoanLimitScreen extends StatefulWidget {
  @override
  _LoanLimitScreenState createState() => _LoanLimitScreenState();
}

class _LoanLimitScreenState extends State<LoanLimitScreen> {
  bool _lights = false;
  ProgressDialog pr;
  double _qualifyforSliderValue = 50;
  double _howmuchyouneedSliderValue = 50;

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

    //make the result of the amount slider thousands
    double multiply() {
      double result = _howmuchyouneedSliderValue * 1000;
      return result;
    }

    //get the price based on the amount to be contributed slider
    double percentagePrice =13;
    //calculate monthly payments
    double monthlyPayments() {
      double monthlyPaymentResult =
          (Finance.pmt(rate:  0.013/ 12, nper: 1 * 12, pv: multiply())) * -1;
      return monthlyPaymentResult;
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LoanLimitScreen',
      home: Scaffold(

        body: Container(
          child: ListView(children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChapaaMainScreen()));
                    }),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            TitleDescriptionWidget(
              titleDescription: '',
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
                child: Container(
                  height: 300,
                  child:  SfRadialGauge(
                    //enableLoadingAnimation: true, animationDuration: 4500,
                    axes: <RadialAxis>[
                      RadialAxis(minimum: 0,maximum: 100,
                          ranges: <GaugeRange>[
                            GaugeRange(startValue: 0,endValue: 50,color: Colors.green,startWidth: 10,endWidth: 10),],
                          //pointers: <GaugePointer>[NeedlePointer(value:50, )],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(widget: Container(child:
                            Text('KES 50K',style: TextStyle(fontSize: 25,fontWeight:FontWeight.bold))),
                            )]
                      )]
                ),
              ),
    )
    )
    ]
    )
    )
      )
    );
  }
}
