import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class FoodDrinkLandingScreen extends StatefulWidget {
  @override
  _FoodDrinkLandingScreenState createState() => _FoodDrinkLandingScreenState();
}

class _FoodDrinkLandingScreenState extends State<FoodDrinkLandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: true,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: true,
                    //title: Text("Pay Bills", style: TextStyle(color: Colors.white, fontSize: 16.0,)),
                    background: Image.asset('images/foodanddrink.jpeg',
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
                  leading: Image.asset('images/nairobijava.jpg',fit: BoxFit.cover,),
                  title: Text('Java'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/artcafe.jpg', fit: BoxFit.cover,),
                  title: Text('Art Cafe'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(icon: Icon(Icons.chevron_right), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/kfclogo.jpg', fit: BoxFit.cover,),
                  title: Text('KFC'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(icon: Icon(Icons.chevron_right,), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/debonairspizza.jpg', fit: BoxFit.cover,),
                  title: Text('Debonairs Pizza'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right,), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/dominospizza.png', fit: BoxFit.cover,),
                  title: Text('Dominos Pizza'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(icon: Icon(Icons.chevron_right,), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/bigsquare.png', fit: BoxFit.cover,),
                  title: Text('Big Square'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(
                      icon: //Image.asset('images/foodanddrink.jpg'),
                      Icon(Icons.chevron_right,), onPressed: null),
                ),
                Divider(),
                ListTile(
                  leading: Image.asset('images/galitos.png', fit: BoxFit.cover,),
                  title: Text('Galitos'),
                  subtitle: Text('10% Discount'),
                  trailing: IconButton(
                      icon: Icon(Icons.chevron_right,), onPressed: null),
                ),
                Divider(),
              ],
            ),
          ),
        ));
  }
}
