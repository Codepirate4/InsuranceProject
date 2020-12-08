import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/DateTimePicker.dart';

const Color mainColor = Color(0xFF796A9D);


class Benefit extends StatefulWidget {
  @override
  _BenefitState createState() => _BenefitState();
}

class _BenefitState extends State<Benefit> {

  String schemeValue = 'DL Edu Pro';
  final List<String> schemeList = [
    'DL Edu Pro',
    'Traditional',
    'DL Loan Secure'
  ];

  int policyTermValue = 1;
  List<DropdownMenuItem> dropdownBuilder() {
    List<DropdownMenuItem<String>> items = [];
    for (String job in schemeList) {
      var d = DropdownMenuItem(
        child: Text(job),
        value: job,
      );
      items.add(d);
    }
    return items;
  }

  List<DropdownMenuItem> policyTermBuilder() {
    List<DropdownMenuItem<int>> items = [];
    for (int i = 1; i <= 12; i++) {
      var d = DropdownMenuItem(
        child: Text(i.toString()),
        value: i,
      );
      items.add(d);
    }
    return items;
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Card(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                        child: Text(
                          "Coverage",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0XFFE5E5E5),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text("Life"),
                                  Text("1"),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0XFFE5E5E5),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              padding: EdgeInsets.all(5),
                              child: Column(
                                children: <Widget>[
                                  Text("Coverage"),
                                  Text("1"),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(top: 12, bottom: 12, right: 30),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    focusColor: mainColor,
                    value: schemeValue,
                    items: dropdownBuilder(),
                    onChanged: (value) {
                      setState(() {
                        schemeValue = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Card(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                Theme(
                  data: ThemeData(primaryColor: mainColor),
                  child: DateTimePickerDOB(),
                ),
                Theme(
                  data: ThemeData(primaryColor: mainColor),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    cursorColor: mainColor,
                    decoration: InputDecoration(
                      labelText: 'Sum Insured',
                    ),
                    //controller: fieldText,
                  ),
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Policy Term", style: TextStyle(fontSize: 10),),
                          DropdownButton<int>(
                            isExpanded: true,
                            focusColor: mainColor,
                            value: policyTermValue,
                            items: policyTermBuilder(),
                            onChanged: (value) {
                              setState(() {
                                policyTermValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 7,),
                 Expanded(child:  Theme(
                   data: ThemeData(primaryColor: mainColor),
                   child: TextFormField(
                     enabled: false,
                     initialValue: '7612',
                     cursorColor: mainColor,
                     decoration: InputDecoration(
                       labelText: 'Annual/Yearly Premium',
                     ),
                     //controller: fieldText,
                   ),
                 ),)

                ],),

                Container(
                  margin: EdgeInsets.only(top: 15, bottom: 10),
                  decoration: BoxDecoration(
                    color: Color(0XFFCFC4BB),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: FlatButton(
                    padding: EdgeInsets.all(10),
                    onPressed: () {},
                    child: Icon(
                      Icons.description,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
