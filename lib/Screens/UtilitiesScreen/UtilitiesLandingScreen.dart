import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UtilitiesLandingScreen extends StatefulWidget {
  @override
  _UtilitiesLandingScreenState createState() => _UtilitiesLandingScreenState();
}

class _UtilitiesLandingScreenState extends State<UtilitiesLandingScreen> {
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
                    //title: Text("Pay Bills", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/paybils.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
            ];
          },
          body: Container(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Text(''),
                ),
                ListTile(
                  leading: Icon(
                    MdiIcons.waterOutline,
                    color: Colors.orange,
                  ),
                  title: Text('Nairobi Water'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    MdiIcons.lightbulb,
                    color: Colors.lightGreen,
                  ),
                  title: Text('KPLC Prepaid'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    MdiIcons.lightbulb,
                    color: Colors.amber,
                  ),
                  title: Text('KPLC Postpaid'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                      onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(MdiIcons.televisionClassic,
                      color: Colors.lightBlue),
                  title: Text('DSTV'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    MdiIcons.televisionClassic,
                    color: Colors.deepPurple,
                  ),
                  title: Text('GOTV'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    MdiIcons.wifi,
                    color: Colors.lightBlue,
                  ),
                  title: Text('Zuku'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Icon(
                    MdiIcons.airplane,
                    color: Colors.brown,
                  ),
                  title: Text('Jambo Jet'),
                  subtitle: Text('KES 0.00'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right), onPressed: null),
                ),
              ],
            ),
          ),
        ));
  }
}
