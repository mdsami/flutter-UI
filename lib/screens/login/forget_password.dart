// import 'package:dufa/Const/const.dart';
// import 'package:dufa/network/api_service.dart';
// import 'package:dufa/ui/Home/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';
import 'dart:convert';

import 'login.dart';

class ForgetPasswordPage extends StatelessWidget {
  var useremailController = new TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 650,
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                    ),
                    Card(
                      margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                      elevation: 11,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      child: TextField(
                        controller: useremailController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black26,
                          ),
                          hintText: "Email",
                          hintStyle: TextStyle(color: Colors.black26),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 16.0),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(30.0),
                      child: RaisedButton(
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        color: Colors.pink,
                        onPressed: () {
                          // if(validate()){
                          //   getPassword(context);
                          // }
                        },
                        elevation: 11,
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0))),
                        child: Text("Submit",
                            style: TextStyle(color: Colors.white70)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  // bool validate() {
  //   if(useremailController.text == null){
  //     Const.showMessage("Enter Email");
  //     return false;
  //   } else{
  //     return true;
  //   }
  // }
  // void getPassword(context) async{
  //   isLoading = true;
  //   Const.showLoader(context);
  //   Map<String, dynamic> map = {
  //     'user_login': useremailController.text,
  //   };
  //   var response = await ApiService.userForgetPassword(json.encode(map));
  //   print(response.data);

  //   if(isLoading){
  //     Navigator.pop(context);
  //   }
  //   Navigator.pushAndRemoveUntil(
  //       context,
  //       PageTransition(
  //           type: PageTransitionType.fade,
  //           child: LoginPage(),
  //           alignment: Alignment.center,
  //           duration: Duration(milliseconds: 800)),
  //           (Route<dynamic> route) => false);
  // }
}
