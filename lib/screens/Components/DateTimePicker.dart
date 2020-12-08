import 'package:flutter/material.dart';

import 'AppBar.dart';



class DateTimePickerDOB extends StatefulWidget {
  @override
  _DateTimePickerDOBState createState() => _DateTimePickerDOBState();
}

class _DateTimePickerDOBState extends State<DateTimePickerDOB> {
  DateTime selectedDate = DateTime.now();
  final fieldText = TextEditingController();

  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(1950),
      lastDate: DateTime(2025),
      initialDatePickerMode: DatePickerMode.year,
      builder: (context, child) {
        return Theme(data: ThemeData(primaryColor: Color1), child: child);
      },
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
      fieldText.value =
          TextEditingValue(text: '${selectedDate.toString()}'.split(' ')[0]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          TextFormField(
            keyboardType: null,
            readOnly: true,
            showCursor: false,
            decoration: InputDecoration(
              labelText: 'Date of Birth',
            ),
            enabled: true,
            controller: fieldText,
            //initialValue: '${selectedDate.toLocal()}'.split(' ')[0],
            onTap: () => _selectDate(context),
          ),
        ],
      ),
    );
  }
}