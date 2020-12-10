import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Components/AppBar.dart';
import 'package:insurance_app/screens/Components/Footer.dart';
import 'package:insurance_app/screens/Components/SearchBar.dart';
import 'DLEduPro.dart';
import 'DLLoanSecure.dart';
import 'Traditional.dart';
import 'package:insurance_app/screens/Components/drawer.dart';

// import 'package:insurance_app/screens/Contacts/Contacts.dart';
import 'package:insurance_app/screens/Quotation/Components/Modal.dart';

const Color Color1 = Color.fromRGBO(146, 132, 110, 1);
const Color Color2 = Color.fromRGBO(194, 183, 168, 0.6);
const Color Color3 = Color.fromRGBO(226, 221, 212, 0.3);

class Quotation extends StatefulWidget {
  @override
  _QuotationState createState() => _QuotationState();
}

class _QuotationState extends State<Quotation> {
  @override
  Widget build(BuildContext context) {
    //Modal

    final SimpleDialog dialog = SimpleDialog(
      title: Center(child: Text('Prospect Client')),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
      children: [
        Container(
            child: SimpleDialogItem(
              text: 'Traditional',
              onPressed: () {
                Navigator.push(context,
                    new MaterialPageRoute(builder: (context) => Traditional()));
              },
            ),
            color: Color.fromRGBO(20, 20, 20, 0.1)),
        SimpleDialogItem(
          text: 'DL Edu Pro',
          onPressed: () {
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => DlEduPro()));
          },
        ),
        Container(
          child: SimpleDialogItem(
            text: 'DL Loan Secure',
            onPressed: () {
              Navigator.push(context,
                  new MaterialPageRoute(builder: (context) => DlLoanSecure()));
            },
          ),
          color: Color.fromRGBO(20, 20, 20, 0.1),
        ),
      ],
    );

    return Scaffold(
      appBar: CustomAppBar("Quotation"),
      drawer: MainDrawer(),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            SearchField(),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(15),
                      title: Text(
                        "24569AB8712345455",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 5,
                          ),
                          Text('Policy Owner: Mayank'),
                          Text('ID No.: 1234567890123456'),
                          Text('Product'),
                        ],
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                            height: 30,
                          ),
                          Text('Created On:     2/12/2020',
                              style: TextStyle(fontSize: 10, color: Color1)),
                          Text('Last Updated: 3/12/2020',
                              style: TextStyle(fontSize: 10, color: Color1)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
           Footer()
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: FloatingActionButton(
          backgroundColor: Color1,
          splashColor: Color3,
          child: Icon(Icons.add),
          tooltip: 'Add New screens.Quotation',
          onPressed: () {
            print("Floating Button Pressed");
            showDialog<void>(context: context, builder: (context) => dialog);
          },
        ),
      ),
    );
  }
}
