import 'package:flutter/material.dart';

class CreateProfileScreen extends StatefulWidget {
  @override
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              top: 75,
            ),
            alignment: Alignment.center,
            child: Text("NAME AND PASSWORD",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15)),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(left: 30, right: 30, top: 30),
            height: 50,
            decoration: BoxDecoration(
                color: Color(0XFFFAFAFA),
                border: Border.all(color: Color(0XFFDBDBDB)),
                borderRadius: BorderRadius.circular(6)),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "FullName",
              ),
              onChanged: (val) {
                setState(() {});
              },
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 15, right: 15),
            margin: EdgeInsets.only(left: 30, right: 30, top: 20),
            height: 50,
            decoration: BoxDecoration(
                color: Color(0XFFFAFAFA),
                border: Border.all(color: Color(0XFFDBDBDB)),
                borderRadius: BorderRadius.circular(6)),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                hintText: "Password",
              ),
              obscureText: true,
              onChanged: (val) {
                setState(() {});
              },
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5, left: 18),
              child: Row(
                children: <Widget>[
                  Checkbox(value: false, onChanged: null),
                  Text(
                    "Save Password",
                    style: TextStyle(
                      color: Color(0XFF999999),
                    ),
                  )
                ],
              )),
          Container(
            width: double.maxFinite,
            height: 50,
            margin: EdgeInsets.only(top: 5, left: 30, right: 30),
            child: FlatButton(
              onPressed: null,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              color: Color(0XFF0195f7),
              disabledColor: Color(0XFF0195f7).withOpacity(0.4),
              disabledTextColor: Colors.grey.withOpacity(0.5),
              textColor: Colors.white,
              child: Text(
                "Continue and Sync Contacts",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(top: 20, left: 30, right: 30),
            alignment: Alignment.center,
              child: Text(
                "Continue without Syncing Contacts",
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0XFF0195f7),
                  fontWeight: FontWeight.w700
                ),
              ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                left:20,
                right:20,
                bottom:20
              ),
              alignment: Alignment.bottomCenter,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    color: Color(0XFF999999),
                    fontSize: 13,
                  ),
                  children: [
                    TextSpan(
                      text:"Your contacts will be periodically synced and stored on Instagram servers to help you and others find friends and to help us provide a better service. To remove contacts, go to Settings and disconnect."
                    ),
                    TextSpan(
                      text: "Learn More",
                      style: TextStyle(
                        fontWeight: FontWeight.w700
                      )
                    )
                  ]
                )
              )
            )
          )
        ],
      ),
    );
  }
}
