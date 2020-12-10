import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const Color Color1 = Color.fromRGBO(146, 132, 110, 1);
const Color Color2 = Color.fromRGBO(194, 183, 168, 0.6);
const Color Color3 = Color.fromRGBO(226, 221, 212, 0.3);
//const Color mainColor = Color(0xFF92846E);

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;

  CustomAppBar(
      this.title, {
        Key key,
      })  : preferredSize = Size.fromHeight(90.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color1,
      // decoration: BoxDecoration(border: Border.all(color: Color(0xFFE5E5E5))),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 35,
                      ),
                      Text(
                        title,
                        style: TextStyle(
                            color:Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.w600),
                      ),
//                      SizedBox(
//                        height: 35,
//                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height:40,
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://s3.amazonaws.com/cms-assets.tutsplus.com/uploads/users/810/profiles/19338/profileImage/profile-square-extra-small.png"),
                            fit: BoxFit.fill),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "GS001",
                      style: TextStyle(
                          letterSpacing: 1.1,
                          fontSize: 12,
                          //color: Color(0XFFEBE2DB),
                          color: Color(0XFFCFC4BB),
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            SizedBox(
              height: 5,
            ),
              // Text("Drafts: 4",style: TextStyle(color: Colors.white),),
              // Text("Completed Quotations: 10",style: TextStyle(color: Colors.white),),
            ],
          )
        ],
      ),
    );
  }
}