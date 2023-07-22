import 'package:adk/pages/forgot_pw.dart';
import 'package:adk/pages/onboard.dart';
import 'package:adk/pages/sign_in.dart';
import 'package:adk/pages/sign_up.dart';
import 'package:adk/pages/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:adk/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    HomePage.tag: (context) => HomePage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: SplashScreen(),
      routes: routes,
    );
  }
}
