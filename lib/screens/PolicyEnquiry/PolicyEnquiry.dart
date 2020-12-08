import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/drawer.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';

class PolicyEnquiry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Policy Enquiry"),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text("Policy Enquiry")],
        ),
      ),
    );
  }
}
