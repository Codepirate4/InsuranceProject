import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';
import 'package:insurance_app/screens/Components/drawer.dart';

class QuotationSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar("Quotation Summary"),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonTheme(
                  minWidth: 30,
                  child: RaisedButton(
                      color: Color1,
                      splashColor: Color2,
                      elevation: 5.0,
                      autofocus: true,
                      child: Text(
                        "Monthly",
                        style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {})),
              ButtonTheme(
                  minWidth: 30,
                  child: RaisedButton(
                      color: Color1,
                      splashColor: Color2,
                      elevation: 5.0,
                      autofocus: true,
                      child: Text(
                        "Quaterly",
                          style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {})),
              ButtonTheme(
                  minWidth: 30,
                  child: RaisedButton(
                      color: Color1,
                      splashColor: Color2,
                      elevation: 5.0,
                      autofocus: true,
                      child: Text(
                        "Semi-Annual",
                        style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {})),
              ButtonTheme(
                  minWidth: 30,
                  child: RaisedButton(
                      color: Color1,
                      splashColor: Color2,
                      elevation: 5.0,
                      autofocus: true,
                      child: Text(
                        "Annual",
                        style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {})),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Color1, width: 2),
                              color: Color3
                            ),
                            padding: EdgeInsets.all(8),

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                        EdgeInsets.fromLTRB(10, 0, 20, 0),
                                        child: Column(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor:
                                              Colors.brown.shade800,
                                              child: Text('MP'),
                                            ),
                                            Text(
                                              "Mayank",
                                              style: TextStyle(fontSize: 11),
                                            )
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            50, 5, 10, 5),
                                        child: Container(

                                            padding: EdgeInsets.all(8),
                                            color: Color2,
                                            child: Text(
                                              "Coverage 01",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            10, 5, 10, 5),
                                        child: Container(
                                            padding: EdgeInsets.all(8),
                                            color: Color2,
                                            child: Text(
                                              "DL Edu Pro",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Term",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                              height: 10,
                                              thickness: 2,
                                            ),
                                            Text("15"),
                                            Text("LIFE(01) Totals"),
                                            Text("Policy Totals"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Sum Insured",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                              height: 10,
                                              thickness: 2,
                                            ),
                                            Text("10,000.00"),
                                            Text("10,000.00"),
                                            Text("15,000.00"),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Text(
                                              "Annual Premium",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Divider(
                                              color: Colors.black,
                                              height: 10,
                                              thickness: 20,
                                            ),
                                            Text("640.00"),
                                            Text("640.00"),
                                            Text("669.45"),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                      ]),
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}