import 'package:flutter/material.dart';

class CreditCard extends StatelessWidget {
  final Color color;
  final String image;
  final int number;
  final String valid;

  CreditCard({this.color, this.image, this.number, this.valid});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 8, 20, 8),
      child: Container(
          height: 180,
          width: 300,
          decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Color(0x3B45A9), Color(0x0E235E)]),
              color: color,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                    color: Colors.blue[600],
                    offset: Offset(3, 1),
                    // blurRadius: 7,
                    spreadRadius: 2)
              ]),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            SizedBox(
                              child: Image.network(
                                  "https://cdn.bitrix24.com/b11324809/landing/bb2/bb27497d64c54d2526bea8821a601ea4/11_2x.png"),
                              height: 40,
                            ),
                            Text(
                              "মেলা সারাবেলা",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            )
                          ],
                        ),
                        Image.network("https://scontent.fdac30-1.fna.fbcdn.net/v/t1.0-1/p160x160/75552925_2559835247426544_3095888928914276352_o.jpg?_nc_cat=108&_nc_sid=dbb9e7&_nc_oc=AQnucxd_vu7wJwwT6U5lMrERTd_OQ2NgupptzAAXLn1u7pDxUEyM3e1A9fExmiypl4I&_nc_ht=scontent.fdac30-1.fna&_nc_tp=6&oh=b63878fa791cc8e93fa66a0043362605&oe=5E9EC49A")
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Member Name",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "S A Saharukh",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text(
                                  "Member Level",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Gold",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Text(
                                  "Member No",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "0000 2020 0000 0011",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Member Since",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "01/20",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      "Expires On",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    Text(
                                      "03/22",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
