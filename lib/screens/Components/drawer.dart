import 'package:flutter/material.dart';
import 'package:insurance_app/screens/Contacts/Contacts.dart';
import 'package:insurance_app/screens/BuisnessCase/BuissnessCase.dart';
import 'package:insurance_app/screens/Quotation/Quotation.dart';
import 'package:insurance_app/screens/PolicyEnquiry/PolicyEnquiry.dart';
import 'package:insurance_app/screens/Quotation/QuotationSummary.dart';


class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            color: Color2,
            child: Column(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://s3.amazonaws.com/cms-assets.tutsplus.com/uploads/users/810/profiles/19338/profileImage/profile-square-extra-small.png"),
                          fit: BoxFit.fill)),
                ),
                Text(
                  "Mayank Patel",
                  style: TextStyle(
                    color: Color1,
                    fontSize: 22,
                  ),
                ),
                Text(
                  "mayankpatelindia1679@gmail.com",
                  style: TextStyle(color: Color1),
                )
              ],
            ),
          ),
          ListTile(
              leading: Icon(Icons.person),
              title: Text(
                "Contacts",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Contacts()));
              }),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Quotation",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Quotation()));
            }
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Buissness Case",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BuisnessCase()));
            }
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              "Policy Enquiry",
              style: TextStyle(fontSize: 18),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => QuotationSummary()));
            }
          )
        ],
      ),
    );
  }
}
