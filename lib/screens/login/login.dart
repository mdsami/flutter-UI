import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wave/config.dart';
import 'package:fabflutter/screens/home.dart';
import 'package:wave/wave.dart';

import 'forget_password.dart';




class LoginPage extends StatelessWidget {
  var usernameController = new TextEditingController();
  var passwordController = new TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: RotatedBox(
              quarterTurns: 2,
              child: WaveWidget(
                config: CustomConfig(
                  gradients: [
                    [Colors.red, Colors.red.shade200],
                    [Colors.redAccent.shade200, Colors.redAccent.shade400],
                  ],
                  durations: [19440, 10800],
                  heightPercentages: [0.20, 0.25],
                  blur: MaskFilter.blur(BlurStyle.solid, 10),
                  gradientBegin: Alignment.bottomLeft,
                  gradientEnd: Alignment.topRight,
                ),
                waveAmplitude: 0,
                size: Size(
                  double.infinity,
                  double.infinity,
                ),
              ),
            ),
          ),
          ListView(
            children: <Widget>[
              Container(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 50,
                    ),
                    Text("Login",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white70,
                            fontWeight: FontWeight.bold,
                            fontSize: 28.0)),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.black26,
                            ),
                            hintText: "Username",
                            hintStyle: TextStyle(color: Colors.black26),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                              BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                        controller: usernameController,
                      ),
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.black26,
                            ),
                            hintText: "Password",
                            hintStyle: TextStyle(
                              color: Colors.black26,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                              BorderRadius.all(Radius.circular(40.0)),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0)),
                        controller: passwordController,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.pink,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()),
                          );
                          // if (validate()) {
                          //   doLogin(context);
                          // }
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Login",
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              /*Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dont have an account?"),
                        FlatButton(
                          child: Text("Sign up"),
                          textColor: Colors.pink,
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    child: RegistrationPage(),
                                    type:
                                        PageTransitionType.leftToRightWithFade,
                                    duration: Duration(milliseconds: 800)));
                          },
                        )
                      ],
                    )
                  ],
                ),
              )*/
              FlatButton(
                child: Text("Forget Password"),
                textColor: Colors.pink,
                onPressed: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          child: ForgetPasswordPage(),
                          type: PageTransitionType.leftToRightWithFade,
                          duration: Duration(milliseconds: 800)));
                },
              )
            ],
          ),
        ],
      ),
    );
  }


}
