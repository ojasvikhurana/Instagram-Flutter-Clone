import 'package:flutter/material.dart';
import 'package:instagram_clone/createProfile.dart';


class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Container(
        width: double.maxFinite,
        child: Column(
          
          children: <Widget>[
            Expanded(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
              child: Image.asset(
                "assets/signup/profile.png",
                width: 150,
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, left: 35, right: 35),
              child: DefaultTabController(
                  length: 2,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color: Color(0XFF707070), width: 1))),
                        child: TabBar(
                          indicatorWeight: 1,
                          indicatorColor: Colors.black,
                          labelColor: Colors.black,
                          unselectedLabelColor: Color(0XFF707070),
                          tabs: [
                            Tab(
                              text: "Phone Number".toUpperCase(),
                            ),
                            Tab(
                              text: "Email Address".toUpperCase(),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        margin: EdgeInsets.only(top: 15),
                        child: TabBarView(
                          children: [
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFFAFAFA),
                                        border: Border.all(
                                            color: Color(0XFFDBDBDB)),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: TextField(
                                      controller: phoneNumberController,
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        hintText: "Phone Number",
                                      ),
                                      keyboardType: TextInputType.phone,
                                      onChanged: (val){
                                        setState(() {
                                          phoneNumberController.text=val;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 15,
                                      ),
                                      child: Text(
                                        "You may recieve SMS updates from Instagram and you can opt out at any time",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11.5,
                                        ),
                                      )
                                    ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 15, right: 15),
                                    height: 50,
                                    decoration: BoxDecoration(
                                        color: Color(0XFFFAFAFA),
                                        border: Border.all(
                                            color: Color(0XFFDBDBDB)),
                                        borderRadius: BorderRadius.circular(6)),
                                    child: TextField(
                                      controller: emailController,
                                      decoration: InputDecoration(
                                        enabledBorder: InputBorder.none,
                                        focusedBorder: InputBorder.none,
                                        hintText: "Email Address",
                                      ),
                                      keyboardType: TextInputType.emailAddress,
                                      onChanged: (val){
                                        setState(() {
                                          emailController.text=val;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(
                                        top: 15,
                                      ),
                                    ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                            width: double.maxFinite,
                            height: 50,
                            margin: EdgeInsets.only(
                                top: 15,
                                left: 20, 
                                right: 20
                            ),
                            child: FlatButton(
                            onPressed:
                              (phoneNumberController.text != "" || emailController.text!="")?
                              () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => CreateProfileScreen()));
                              }:null,
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                  BorderRadius.circular(6)),
                            color: Color(0XFF0195f7),
                            disabledColor: Color(0XFF0195f7).withOpacity(0.4),
                            disabledTextColor: Colors.grey.withOpacity(0.5),
                            textColor: Colors.white,
                            child: Text(
                                "Next",
                                style: TextStyle(fontSize: 15),
                            ),
                          ),
                      ),
                    ],
                  )
                ),
            ),
                ],
              ) 
            ),
            Container(
              height: 60,
              width: double.maxFinite,
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11
                  ),
                  children: [
                  TextSpan(
                    text:"Already have an Acoount?"
                  ),
                  TextSpan(
                    text: "Log In",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    )
                  )
                  ]
                ) 
              )
            )
          ],
        ),
      ),
    );
  }
}
