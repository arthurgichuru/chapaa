import 'package:flutter/material.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatelessWidget {

  final format = DateFormat("dd-MM-yyyy");

  String labelText;

  DateTimeWidget({@required this.labelText});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: DateTimeField(
        decoration: InputDecoration(border: OutlineInputBorder(
        ),
            labelText: labelText,
        ),
        format: format,
        onShowPicker: (context, currentValue) {
          return showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
        },
      ),
    );
  }
}
