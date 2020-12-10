import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';
import 'package:insurance_app/screens/Components/DateTimePicker.dart';

class LifeInsuredElement extends StatefulWidget {
  @override
  _LifeInsuredElementState createState() => _LifeInsuredElementState();
}

class _LifeInsuredElementState extends State<LifeInsuredElement> {
  int selectedRadio = 0;

  void clearText() {}
  String jobTitleValue = 'None';
  List<String> jobTitles = ['None', 'Software Developer', 'Data Analyst', 'HR'];

  List<DropdownMenuItem> dropdownBuilder() {
    List<DropdownMenuItem<String>> items = [];
    for (String job in jobTitles) {
      var d = DropdownMenuItem(
        child: Text(job, style: TextStyle(fontSize: 15),),
        value: job,
      );
      items.add(d);
    }
    return items;
  }

  void handleRadioValueChange(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 10),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Color1,
      // shape: new ShapeBorder(),

      child: Column(
        children: <Widget>[
          AppBar(
              toolbarHeight: 30,
              leading: Icon(
                Icons.person,
                size: 25,
              ),
              title: Text(
                'Life Insured',
                style: TextStyle(fontSize: 15),
              ),
              backgroundColor: Color1,
              centerTitle: true,
              actions: <Widget>[
                Icon(Icons.cancel),
                SizedBox(
                  width: 5,
                )
              ]),
          //Selected Contact
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Selected Contact',
                        labelStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),

            ],
          ),
          //Relationship to Proposer
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Relationship to Proposer',
                        labelStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),

            ],
          ),
          //Name
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    style: TextStyle(),
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'First Name',
                        labelStyle: TextStyle(fontSize: 12)),
                    //controller: fieldText,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Middle Name',
                        labelStyle: TextStyle(fontSize: 12)),
                    //controller: fieldText,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Last Name',
                        labelStyle: TextStyle(fontSize: 12)),
                    //controller: fieldText,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          //Name Local Language
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Name in local language',
                        labelStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),

            ],
          ),
          //Gender
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(child:  Container(
                // padding: EdgeInsets.only(top:),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Gender"),
                    Row(
                      children: <Widget>[
                        Radio(
                            activeColor: Color1,
                            value: 0,
                            groupValue: selectedRadio,
                            onChanged: handleRadioValueChange),
                        Text("Male"),
                        Radio(
                            activeColor: Color1,
                            value: 1,
                            groupValue: selectedRadio,
                            onChanged: handleRadioValueChange),
                        Text("Female"),
                        Radio(
                            activeColor: Color1,
                            value: 2,
                            groupValue: selectedRadio,
                            onChanged: handleRadioValueChange),
                        Text("Other"),
                      ],
                    )
                  ],
                ),
              )),
              SizedBox(
                width: 5,
              ),
            ],

          ),
          //DOB, Age Last BirthDay
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(child: DateTimePickerDOB()),
              SizedBox(width: 5,),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Age Last BirthDay',
                        labelStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
            ],
          ),
          //Job Title
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Job Title", style: TextStyle(fontSize: 10),),
                      DropdownButton<String>(
                        isExpanded: true,
                        focusColor: Color1,
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
              ),
              SizedBox(
                width: 5,
              ),

            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: Theme(
                  data: ThemeData(primaryColor: Color1),
                  child: TextFormField(
                    cursorColor: Color1,
                    decoration: InputDecoration(
                        labelText: 'Exact Nature of Duties',
                        labelStyle: TextStyle(fontSize: 12)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
            ],
          ),
          SizedBox(height: 10,)
        ],
      ),
    );

  }
}
