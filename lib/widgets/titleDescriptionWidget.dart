import 'package:flutter/material.dart';


class TitleDescriptionWidget extends StatelessWidget {

  String titleDescription;

  TitleDescriptionWidget({@required this.titleDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(titleDescription, style: TextStyle(fontSize: 24,color: Color(0xffc43c00)),textAlign: TextAlign.center,),
    );
  }
}
