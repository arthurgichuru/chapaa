import 'package:chapaa/Screens/ChapaaMainScreens/TransactionMainScreen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AirtimeTopUpScreen extends StatefulWidget {
  @override
  _AirtimeTopUpScreenState createState() => _AirtimeTopUpScreenState();
}

class _AirtimeTopUpScreenState extends State<AirtimeTopUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
      return <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              //title: Text("Airtime Top Up", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
              background: Image.asset('images/airtimerecharge.jpg',
                fit: BoxFit.cover,
              )),
        ),
      ];
    },
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(MdiIcons.phone, color: Colors.green,),
              title: Text('Safaricom Airtime'),
              subtitle: Text('KES 0.00'),
              trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.phone, color: Colors.red,),
              title: Text('Airtel Airtime'),
              subtitle: Text('KES 0.00'),
              trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(MdiIcons.phone, color: Colors.blue,),
              title: Text('Telkom Airtime'),
              subtitle: Text('KES 0.00'),
              trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
          ],
        ),
      ),
      ),
    );
  }
}
