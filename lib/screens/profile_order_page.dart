import 'package:flutter/material.dart';

import 'choose_task.dart';

class ProfileOrderPage extends StatefulWidget {
  @override
  _ProfileOrderPageState createState() => _ProfileOrderPageState();
}

class _ProfileOrderPageState extends State<ProfileOrderPage> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    print("${deviceSize.width / 2}");
    return Scaffold(
      // height: deviceSize.height,
      // width: deviceSize.width,
      backgroundColor: Colors.white,

      body: CustomPaint(
        size: deviceSize,
        painter: Background(),
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 0.0,
                right: 0.0,
                bottom: 0.0,
                left: 0.0,
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0.0,
                  leading: Builder(
                    builder: (BuildContext context) {
                      return IconButton(
                        icon: Icon(Icons.arrow_back),
                        color: Colors.blueAccent,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        tooltip: MaterialLocalizations.of(context)
                            .previousPageTooltip,
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                top: 60,
                // bottom: 300,
                left: 0,
                right: 0,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 34.0, bottom: 10.0, right: 34.0),
                  child: Container(
                      height: deviceSize.height / 2 - 30,
                      child: FittedBox(
                        fit: BoxFit.contain,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 250,
                                  height: 350,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFCFF8FD),
                                      shape: BoxShape.rectangle,
                                      image: DecorationImage(
                                        image: AssetImage("assets/bgpic.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey,
                                            spreadRadius: 1.2,
                                            offset: Offset(0.0, 1.0)),
                                      ]),
                                ),
                                SizedBox(
                                  width: 200,
                                ),
                                Container(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      // Row(
                                      //   mainAxisSize: MainAxisSize.max,
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceBetween,
                                      //   children: <Widget>[
                                      //     Container(
                                      //       width: 150,
                                      //       height: 270,
                                      //       color: Color(0xFFCFF8FD),
                                      //       child: Column(
                                      //         children: <Widget>[
                                      //           // Icon(Icons.)
                                      //         ],
                                      //       ),
                                      //     ),
                                      //     SizedBox(
                                      //       width: 20,
                                      //     ),
                                      //     Container(
                                      //       width: 150,
                                      //       height:270,
                                      //       color: Color(0xFFCFF8FD),
                                      //       child: Column(
                                      //         children: <Widget>[
                                      //           // Icon(Icons.)
                                      //         ],
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                      RichText(
                                          text: TextSpan(
                                        text: "Ratings",
                                        style: TextStyle(
                                          fontSize: 40,
                                          color: Color(0xFF0641AD),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      )),
                                      SizedBox(
                                        height: 30,
                                      ),
                                      Row(children: <Widget>[
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[600],
                                          size: 70,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[600],
                                          size: 70,
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow[600],
                                          size: 70,
                                        ),
                                        Icon(
                                          Icons.star_half,
                                          color: Colors.yellow[600],
                                          size: 70,
                                        ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.yellow[600],
                                          size: 70,
                                        )
                                      ]),
                                      SizedBox(
                                        height: 40,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: "from  ",
                                            style: TextStyle(
                                              fontSize: 30,
                                              color: Color(0xFF0641AD),
                                              fontWeight: FontWeight.w300,
                                            ),
                                            children: [
                                              TextSpan(
                                                  text: "500NG/h",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 40,
                                                      letterSpacing: 1.0)),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: deviceSize.width * 2.22,
                              margin: const EdgeInsets.only(top: 50),
                              height: 400,
                              child: Flex(
                                direction: Axis.horizontal,
                                children: <Widget>[
                                  Expanded(
                                      child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            RichText(
                                              text: TextSpan(
                                                  text: "Anton ",
                                                  style: TextStyle(
                                                      fontSize: 70,
                                                      color: Color(0xFF0641AD),
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      letterSpacing: 1.0),
                                                  children: [
                                                    TextSpan(
                                                        text: "R.",
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w300,
                                                        )),
                                                  ]),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              "No 37, St. Petersburg",
                                              style: TextStyle(
                                                  fontSize: 38,
                                                  color: Color(0xFF0641AD),
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing: 1.0),
                                            ),
                                            Row(
                                              children: <Widget>[
                                                Icon(
                                                  Icons.location_on,
                                                  size: 40,
                                                  color: Color(0xFF0641AD),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text("2km",
                                                    style: TextStyle(
                                                        fontSize: 38,
                                                        color:
                                                            Color(0xFF0641AD),
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        letterSpacing: 1.0)),
                                              ],
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 40,
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text:
                                                  "37 years old, higher education. i am engaged in all for a long",
                                              style: TextStyle(
                                                  fontSize: 43,
                                                  color: Color(0xFF0641AD),
                                                  fontWeight: FontWeight.w300,
                                                  letterSpacing: 0.5),
                                              children: [
                                                TextSpan(
                                                    text: " More",
                                                    style: TextStyle(
                                                      fontSize: 43,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    )),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 30,
                child: Container(
                    height: deviceSize.height / 2 - 60,
                    color: Color(0xFF0641AD),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 9.0, right: 8.0, bottom: 4.0),
                                    child: Text(
                                      "3.58",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 22,
                                          letterSpacing: 0.3),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 9.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 8.0),
                                    child: Text(
                                      "Average \n rating",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          letterSpacing: 0.2),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 100,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.thumb_up,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0, right: 8.0, bottom: 4.0),
                                    child: Text(
                                      "93/8",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 22,
                                        letterSpacing: 0.3,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 8.0),
                                    child: Text(
                                      "93 positive \n / 8 negative",
                                      style: TextStyle(
                                          color: Colors.white60,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 12,
                                          letterSpacing: 0.2),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Divider(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "quality".toUpperCase(),
                                      style: TextStyle(
                                          color: Colors.white70,
                                          fontWeight: FontWeight.w500,
                                          letterSpacing: 0.2),
                                    ),
                                  ),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ]),
                                ],
                              ),
                              SizedBox(
                                width: 75,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "availability".toUpperCase(),
                                      style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12,
                                        letterSpacing: 0.2,
                                      ),
                                    ),
                                  ),
                                  Row(children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_half,
                                      color: Colors.white,
                                      size: 18,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.white,
                                      size: 18,
                                    )
                                  ])
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: deviceSize.width / 2 + 80,
                child: InkWell(
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Color(0xFFE7CEC5),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text(
                              "Job \n Offer",
                              style: TextStyle(
                                color: Color(0xFF0641AD),
                              ),
                            ),
                          ),
                          Icon(
                            Icons.arrow_forward,
                            color: Color(0xFF0641AD),
                          ),
                        ],
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => ChooseTask(),
                      fullscreenDialog: true,
                    ));
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Background extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint();

    Path firstBgPath = Path();
    firstBgPath.addRect(Rect.fromLTWH(0.0, 0.0, size.width / 2, size.height));
    paint.color = Color(0xFFCFF8FD);
    canvas.drawPath(firstBgPath, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
