import 'package:fabflutter/map/nearest_oil_pump.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fabflutter/screens/cardpage.dart';
import 'package:permission_handler/permission_handler.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String diamond = '0.0';
  String imeiId = '';
  // DatabaseReference userRef =
  //     FirebaseDatabase.instance.reference().child('Users');

  // ProgressDialog progressDialog;

  AnimationController animationController;
  Animation degOneTranslationAnimation,degTwoTranslationAnimation,degThreeTranslationAnimation;
  Animation rotationAnimation;


  double getRadiansFromDegree(double degree) {
    double unitRadian = 57.295779513;
    return degree / unitRadian;
  }

  @override
  Widget build(BuildContext context) {
    const Color primaryColor = Color.fromRGBO(255, 82, 48, 1);

    // progressDialog =
    //     new ProgressDialog(context, type: ProgressDialogType.Normal);
    // progressDialog.style(message: 'Please wait');
    // progressDialog.show();
    // // showProgressDialog();
    // viewSaveData();
    // getImeiId();
//    getUserData();
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(244, 244, 244, 1),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: primaryColor, border: Border.all(color: primaryColor)),
              child: Padding(
                padding:
                const EdgeInsets.only(top: 30.0, right: 15.0, left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton(
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.network(
                                  "https://scontent.fdac30-1.fna.fbcdn.net/v/t1.0-9/44391615_2073935372657669_5949667763919257600_n.jpg?_nc_cat=110&_nc_sid=7aed08&_nc_oc=AQk4LYPSehkky2HpoHtyBWglQPEuHNVr7TRI2wBTDpOHBEghkN5NeDNHanP2OrgbdaA&_nc_ht=scontent.fdac30-1.fna&oh=0376b2d8b9e1930677a7190bb49e6f32&oe=5E9B2086",
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          Text(
                            "MD SAMI",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "017507292xx",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none),
                      color: Colors.white,
                      iconSize: 30.0,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            Stack(
              children: <Widget>[
                ClipPath(
                  clipper: CustomShapeCliper(),
                  child: Container(
                    height: 350.0,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 25.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            diamond,
                            style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Reward Point',
                            style:
                            TextStyle(fontSize: 14.0, color: Colors.white),
                          ),
                        ],
                      ),
                      Material(
                        elevation: 1.0,
                        borderRadius: BorderRadius.circular(100.0),
                        color: Colors.blue[300],
                        child: FlatButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30.0, vertical: 16.0),
                          child: Text(
                            'Membership-Card',
                            style:
                            TextStyle(fontSize: 16.0, color: Colors.white),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        CardPage()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 120.0, right: 25.0, left: 25.0),
                  child: Container(
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
                )
              ],
            ),
            Padding(
              padding:
              const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
//              child: Text(
//                'Upcoming',
//                textAlign: TextAlign.left,
//                style: TextStyle(
//                  color: Colors.black.withOpacity(0.7),
//                  fontWeight: FontWeight.bold,
//                  fontSize: 20.0,
//                ),
//              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomShapeCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0.0, 390.0 - 200.0);
    path.quadraticBezierTo(size.width / 2, 280, size.width, 390.0 - 200.0);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
