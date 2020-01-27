import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PersonalProfileLandingScreen extends StatefulWidget {
  @override
  _PersonalProfileLandingScreenState createState() => _PersonalProfileLandingScreenState();
}

class _PersonalProfileLandingScreenState extends State<PersonalProfileLandingScreen> {
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
              title: Text("Personal Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              //background: Image.asset('images/paybils.jpg', fit: BoxFit.cover,)
          ),
        ),
      ];
    },
      body: Container(
        child: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                MdiIcons.human,
                color: Colors.blueAccent,
              ),
              title: Text('Profile Details'),
              trailing: IconButton(
                  icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                MdiIcons.lock,
                color: Colors.blueAccent,
              ),
              title: Text('Change Password'),
              trailing: IconButton(
                  icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                MdiIcons.lock,
                color: Colors.blueAccent,
              ),
              title: Text('Tell a friend'),
              trailing: IconButton(
                  icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                MdiIcons.informationOutline,
                color: Colors.blueAccent,
              ),
              title: Text('App Info'),
              trailing: IconButton(
                  icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                MdiIcons.logout,
                color: Colors.blueAccent,
              ),
              title: Text('Sign out'),
              trailing: IconButton(
                  icon: Icon(Icons.chevron_right), onPressed: null),
            ),
            Divider(),
          ],
        ),
      ),
        )
    );
  }
}
