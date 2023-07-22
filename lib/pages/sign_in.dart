import 'package:adk/pages/forgot_pw.dart';
import 'package:adk/pages/home_page.dart';
import 'package:adk/pages/sign_up.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
          //    Navigator.push(context,
          //                     MaterialPageRoute(builder: (context) => (currentTab: 0,currentScreen: ()))
          //    );
        },
      ),
    ));

    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Text('Hello Again!',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            )),
      ),
    );

    final text = Text(
      'Fill your Details or Continue With Social Media',
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black54,
        fontWeight: FontWeight.normal,
        fontSize: 18,
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'loremipsum@gmail.com',
      decoration: InputDecoration(
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
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

    final forgotLabel = TextButton(
      child: Text(
        'Recovery password',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      onPressed: () {
        ForgotPage();
      },
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
          child: Text('Sign In',
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

    final newUser = TextButton(
      child: Text(
        'New User? Create Account',
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black54,
        ),
      ),
      onPressed: () {
        RegisterPage();
      },
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
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 3.0),
            forgotLabel,
            loginButton,
            googleButton,
            newUser,
          ],
        ),
      ),
    );
  }
}
