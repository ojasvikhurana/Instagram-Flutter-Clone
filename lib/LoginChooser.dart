import 'package:flutter/material.dart';
import 'package:instagram_clone/SignUp.dart';

class LoginChooserScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Instagram",
                style: TextStyle(
                  fontFamily: "Billabong",
                  fontSize: 45,
                  fontWeight: FontWeight.w500
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 50,
              margin: EdgeInsets.only(
                top: 40,
                left: 20,
                right: 20
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)
                ),
                color: Color(0XFF0195f7),
                textColor: Colors.white,
                child: Text(
                  "Create New Account",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 30
              ),
              child: InkWell(
                onTap: () {
                },
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Color(0XFF0195f7),
                    fontSize: 15,
                    fontWeight: FontWeight.w900
                  ),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}