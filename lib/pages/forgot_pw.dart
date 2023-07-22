import 'package:adk/pages/home_page.dart';
import 'package:adk/pages/sign_in.dart';
import 'package:flutter/material.dart';

class ForgotPage extends StatefulWidget {
  static String tag = 'forgot-page';
  @override
  _ForgotPageState createState() => new _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
  Widget build(BuildContext context) {
    Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_rounded),
        color: Colors.black,
        onPressed: () {
          LoginPage();
        },
      ),
    ));

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Text('Forgot Password',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
      ),
    );

    final text = Text(
      'Enter Your Email Account To Reset Password Your Password',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );

    final password = TextFormField(
      autofocus: false,
      initialValue: 'some password',
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        // shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.blue,
          child: Text('Reset Password',
              style: TextStyle(
                color: Colors.white,
              )),
        ),
      ),
    );

    final googleButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        // shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },
          color: Colors.grey,
          child: Text('Sign In with Google',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            text,
            SizedBox(height: 48.0),
            password,
            SizedBox(height: 8.0),
            loginButton,
          ],
        ),
      ),
    );
  }
}
