import 'dart:ui';

import 'package:flutter/material.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:newsdemo/screens/dashboard.dart';
import 'package:newsdemo/screens/signup.dart';
// import 'package:newsdemo/main.dart';
import 'package:newsdemo/widgets/widget.dart';

class SignIn extends StatefulWidget {
  // SignIN({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        decoration: new BoxDecoration(
            image: new DecorationImage(
          image: AssetImage(
            'assets/images/bg.jpg',
          ),
          fit: BoxFit.fill,
        )),
        height: MediaQuery.of(context).size.height+20,
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: new BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(30)),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            SizedBox(
              height: 20,
            ),
            Text(
              'Sign in',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w900,
                  color: Colors.lightBlue[900]),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: textFiledInputDecoration("Email"),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: textFiledInputDecoration("Password"),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                'forgot Password?',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            SizedBox(height: 15),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 2,
              
              
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),

              ),
              child: new TextButton(
                
                onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    );
                  },
                child: Text('Sign In',style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  
                    ),),
                
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                vertical: 18,
              ),
              child: Text(
                '-------Sign In with------',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                  Icon(FontAwesomeIcons.google),
                Icon(FontAwesomeIcons.facebook),
                Icon(FontAwesomeIcons.twitter)
            
           ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have account? ",
                  style: TextStyle(color: Colors.grey[600]),
                ),
                new TextButton(
                  // Within the `FirstRoute` widget
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },

                  child: new Text(
                    'Register Now',
                    style: TextStyle(
                        color: Colors.grey[600],
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,)
          ]),
        ),
      ),
    ));
  }
}


