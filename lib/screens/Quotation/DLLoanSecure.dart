import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';

import 'QuotationForm.dart';

class DlLoanSecure extends StatefulWidget {
  @override
  _DlLoanSecureState createState() => _DlLoanSecureState();
}

class _DlLoanSecureState extends State<DlLoanSecure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Dl Loan Secure") ,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(),
            child: Divider(
              color: Color.fromRGBO(10, 10, 10, 0.1),
              height: 20,
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0, left: 100.0, top: 5),
            child: Text(
              'A flexible savings plan that allows you to save and enjoy guaranted cash benefits while protecting you.',
              textAlign: TextAlign.right,
              style:
              TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Image(
                  image: AssetImage('assets/DlEdu_img.jpeg'),
                  height: 200,
                  width: 200,
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 20.0),
            child: Text(
              'What is Dl Edu Pro ?',
              style: TextStyle(
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 100.0, top: 20),
            child: Text(
              'DL EduPro has been designed to offer guaranteed benefits so that your financial goals can be met with surely. It also ensures that your family is financially secured in case of an unfortunate event.',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: RaisedButton(
                color: Color1,
                onPressed: () {

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => QuotationForm()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
                child: Text('Create new Account',
                    style: TextStyle(fontSize: 20, color: Colors.white)),
              ),
            ),
          )
        ],
      ),
    );
  }
}