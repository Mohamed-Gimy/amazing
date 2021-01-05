import 'package:amazing_ecommerce/UI/Widgets/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Log In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                SizedBox(
                  height: 20,
                ),
                Text("Welcome",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold))
              ],
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  bottomLeft: Radius.circular(80)),
              color: Colors.orange[300],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, right: 20, left: 20),
            child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, right: 20, left: 20),
            child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              color: Colors.black,
              child: Text(
                "LOG IN",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              padding: EdgeInsets.all(12),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // this is containeer will make
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Container(
              width: double.infinity,
              child: Text(
                "Forget Password!",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // now we need to import font awesome
                  Icon(
                    FontAwesomeIcons.google,
                    color: Color(0xffff2fc3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign In With Google",
                    style: TextStyle(fontSize: 14, color: Color(0xff000725)),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // now we need to import font awesome
                  Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign In With Facebook")
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // now we need to import font awesome
                  Icon(
                    FontAwesomeIcons.instagram,
                    color: Color(0xffff2fc3),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign In With Instagram")
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8, left: 20, right: 20),
            child: RaisedButton(
              onPressed: () {},
              color: Colors.white,
              padding: EdgeInsets.all(10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  // now we need to import font awesome
                  Icon(
                    FontAwesomeIcons.cloud,
                    color: Colors.blueAccent,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Sign In With Cloud")
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
              child: Text(
            "Don't Have An Account ?",
            style: TextStyle(color: Colors.white),
          )),
          SizedBox(
            height: 3,
          ),

          Center(
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (BuildContext context) => SignUpScreen()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ))),
        ],
      ),
    );
  }
}
