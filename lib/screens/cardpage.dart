import 'package:fabflutter/map/nearest_oil_pump.dart';
import 'package:fabflutter/screens/widgets/cards.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              height: 300,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(60),
                    bottomLeft: Radius.circular(60),
                  )),
            ),
            SafeArea(
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 50),
                          child: RichText(
                              text: TextSpan(children: [
                            // TextSpan(
                            //     text: "\nTotal Balance\n",
                            //     style: TextStyle(
                            //         color: Colors.white.withOpacity(0.5),
                            //         fontSize: 18)),
                            // TextSpan(
                            //     text: "\$ ",
                            //     style: TextStyle(
                            //         color: Colors.white.withOpacity(0.5),
                            //         fontSize: 30)),
                            // TextSpan(
                            //     text: "1,234.00 \n",
                            //     style:
                            //         TextStyle(color: Colors.white, fontSize: 36)),
                            TextSpan(
                                text: " \nYour cards",
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.5),
                                    fontSize: 18)),
                          ])),
                        ),
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                            size: 40,
                          ),
                          onPressed: () {})
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 250,
                    child: CreditCard(
                      color: Color(0x303D97),
                      number: 9290,
                      //image: "assets/images/master.png",
                      valid: "VALID 10/22",
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: double.infinity,
                    height: 530.0,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0.0, 3.0),
                            blurRadius: 15.0,
                          )
                        ]),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.card_giftcard),
                                      color: Colors.purple,
                                      iconSize: 30.0,
                                      onPressed: () {
                                        PermissionHandler().requestPermissions([
                                          PermissionGroup.location
                                        ]).then((value) {
                                          if (value.containsValue(
                                              PermissionStatus.granted)) {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      NearestOilPump()),
                                            );
                                          } else {
                                            print(
                                                "Please allow gps permission");
                                          }
                                        });
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Offer Map',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.blue.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.book),
                                      color: Colors.blue,
                                      iconSize: 30.0,
                                      onPressed: () {
                                        //   Navigator.push(
                                        //       context,
                                        //       MaterialPageRoute<void>(
                                        //         builder: (context) =>
                                        //             SomePage(),
                                        //       ));
                                      },
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Jobs',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.orange.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.games),
                                      color: Colors.orange,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Food Zone',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.pink.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.video_library),
                                      color: Colors.pink,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Watch Tutorial',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.card_giftcard),
                                      color: Colors.purpleAccent,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Servies Zone',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.deepPurple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.surround_sound),
                                      color: Colors.deepPurple,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Ememgency',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 40.0, vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.pink.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.video_library),
                                      color: Colors.pink,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Watch Tutorial',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.purpleAccent.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.card_giftcard),
                                      color: Colors.purpleAccent,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Servies Zone',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Material(
                                    borderRadius: BorderRadius.circular(100.0),
                                    color: Colors.deepPurple.withOpacity(0.1),
                                    child: IconButton(
                                      padding: const EdgeInsets.all(15.0),
                                      icon: Icon(Icons.surround_sound),
                                      color: Colors.deepPurple,
                                      iconSize: 30.0,
                                      onPressed: () {},
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    'Ememgency',
                                    style: TextStyle(
                                        color: Colors.black54,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        // const SizedBox(
                        //   height: 15.0,
                        // ),
                        //const Divider(),
                      ],
                    ),
                  ),
//                  Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Text("Send money"),
//                      ),
//                    ],
//                  ),
                  // Container(
                  //   height: 50,
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //       Padding(
                  //         padding: const EdgeInsets.all(2.0),
                  //         child: CircleAvatar(
                  //           child: Icon(Icons.add),
                  //           radius: 25,
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(2.0),
                  //         child: CircleAvatar(
                  //           backgroundImage: AssetImage("assets/images/p2.jpg"),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(2.0),
                  //         child: CircleAvatar(
                  //           backgroundImage: AssetImage("assets/images/p3.jpg"),
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.all(2.0),
                  //         child: CircleAvatar(
                  //           backgroundImage: AssetImage("assets/images/p1.jpg"),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
//                  Row(
//                    children: <Widget>[
//                      Padding(
//                        padding: const EdgeInsets.all(8.0),
//                        child: Text("Recent transactions"),
//                      ),
//                    ],
//                  ),
//                  ListTile(
//                    onTap: () {
//                      //_settingModalBottomSheet(context);
//                    },
//                    leading: CircleAvatar(
//                      backgroundImage: AssetImage("assets/images/p3.jpg"),
//                    ),
//                    title: RichText(
//                        text: TextSpan(children: [
//                      TextSpan(text: 'Marley Geremy\n'),
//                      TextSpan(
//                          text: 'Money Sent - Today 9AM',
//                          style: TextStyle(fontSize: 14, color: Colors.grey))
//                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
//                    trailing: Text(
//                      "- \$430",
//                      style: TextStyle(fontSize: 20),
//                    ),
//                  ),
//                  ListTile(
//                    onTap: () {
//                      //  _settingModalBottomSheet(context);
//                    },
//                    leading: CircleAvatar(
//                      backgroundImage: AssetImage("assets/images/p2.jpg"),
//                    ),
//                    title: RichText(
//                        text: TextSpan(children: [
//                      TextSpan(text: 'Jason Martin\n'),
//                      TextSpan(
//                          text: 'Money received - Today 12PM',
//                          style: TextStyle(fontSize: 14, color: Colors.grey))
//                    ], style: TextStyle(color: Colors.black, fontSize: 18))),
//                    trailing: Text(
//                      "+ \$220",
//                      style: TextStyle(fontSize: 20),
//                    ),
//                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //       gradient: LinearGradient(
      //           begin: Alignment.bottomCenter,
      //           end: Alignment.topCenter,
      //           colors: [
      //         Colors.white,
      //         Colors.white.withOpacity(0.1),
      //       ])),
      //   height: 50,
      //   child: ListView(
      //     scrollDirection: Axis.horizontal,
      //     children: <Widget>[
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Dashbord",
      //           style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Cards",
      //           style: TextStyle(
      //               fontSize: 22,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.grey),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "History",
      //           style: TextStyle(
      //               fontSize: 22,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.grey),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Settings",
      //           style: TextStyle(
      //               fontSize: 22,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.grey),
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //           "Profile",
      //           style: TextStyle(
      //               fontSize: 22,
      //               fontWeight: FontWeight.w600,
      //               color: Colors.grey),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
