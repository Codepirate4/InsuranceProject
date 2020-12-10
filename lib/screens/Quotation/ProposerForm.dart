import 'package:flutter/material.dart';

const Color mainColor = Color(0xFF796A9D);

class ProposerForm extends StatefulWidget {
  @override
  _ProposerFormState createState() => _ProposerFormState();
}

class _ProposerFormState extends State<ProposerForm> {
  int selectedRadio = 0;
  String jobTitleValue = 'None';
  void handleRadioValueChange(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  List<String> jobTitles = ['None', 'Software Developer', 'Data Analyst', 'HR'];

  List<DropdownMenuItem> dropdownBuilder() {
    List<DropdownMenuItem<String>> items = [];
    for (String job in jobTitles) {
      var d = DropdownMenuItem(
        child: Text(job),
        value: job,
      );
      items.add(d);
    }
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'First Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Middle Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Last Name',
            ),
          ),
        ),
        Theme(
          data: ThemeData(primaryColor: mainColor),
          child: TextFormField(
            cursorColor: mainColor,
            decoration: InputDecoration(
              labelText: 'Name in local language',
            ),
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Gender"),
              Row(
                children: <Widget>[
                  Radio(
                      activeColor: mainColor,
                      value: 0,
                      groupValue: selectedRadio,
                      onChanged: handleRadioValueChange),
                  Text("Male"),
                  Radio(
                      activeColor: mainColor,
                      value: 1,
                      groupValue: selectedRadio,
                      onChanged: handleRadioValueChange),
                  Text("Female"),
                  Radio(
                      activeColor: mainColor,
                      value: 2,
                      groupValue: selectedRadio,
                      onChanged: handleRadioValueChange),
                  Text("Other"),
                ],
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Job Title"),
              DropdownButton<String>(
                isExpanded: true,
                focusColor: mainColor,
                value: jobTitleValue,
                items: dropdownBuilder(),
                onChanged: (value) {
                  setState(() {
                    jobTitleValue = value;
                  });
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}