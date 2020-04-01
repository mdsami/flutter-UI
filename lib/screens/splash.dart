import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:fabflutter/screens/splash.dart';

import 'login/login.dart';


class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SplashScreen(
        photoSize: 200,
        backgroundColor: Colors.deepPurple,
        image: Image.asset("assets/logo.png"),
        seconds: 4,
        navigateAfterSeconds: LoginPage(),
      ),
    );
  }
}