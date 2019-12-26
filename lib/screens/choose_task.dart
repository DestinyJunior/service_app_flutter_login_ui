import 'package:flutter/material.dart';

import 'message_service_owner.dart';

class ChooseTask extends StatefulWidget {
  @override
  _ChooseTaskState createState() => _ChooseTaskState();
}

class _ChooseTaskState extends State<ChooseTask> {
  bool checkBoxValueA = false;
  bool checkBoxValueB = true;
  bool checkBoxValueC = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    print("${deviceSize.height}");
    print("${(deviceSize.height / 2 - 30) + (deviceSize.height / 2 - 30)}");

    return Scaffold(
      backgroundColor: Color(0xFFE7CEC5),
      appBar: AppBar(
        title: Text(
          "Add Tasks",
          style: TextStyle(color: Color(0xFF0641AD)),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
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
                            // SizedBox(
                            //   width: 200,
                            // ),
                            // Container(
                            //   child: Column(
                            //     mainAxisSize: MainAxisSize.max,
                            //     crossAxisAlignment: CrossAxisAlignment.start,
                            //     children: <Widget>[
                            //       RichText(
                            //           text: TextSpan(
                            //         text: "Ratings",
                            //         style: TextStyle(
                            //           fontSize: 40,
                            //           color: Color(0xFF0641AD),
                            //           fontWeight: FontWeight.w600,
                            //         ),
                            //       )),
                            //       SizedBox(
                            //         height: 30,
                            //       ),
                            //       Row(children: <Widget>[
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.yellow[600],
                            //           size: 70,
                            //         ),
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.yellow[600],
                            //           size: 70,
                            //         ),
                            //         Icon(
                            //           Icons.star,
                            //           color: Colors.yellow[600],
                            //           size: 70,
                            //         ),
                            //         Icon(
                            //           Icons.star_half,
                            //           color: Colors.yellow[600],
                            //           size: 70,
                            //         ),
                            //         Icon(
                            //           Icons.star_border,
                            //           color: Colors.yellow[600],
                            //           size: 70,
                            //         )
                            //       ]),
                            //       SizedBox(
                            //         height: 40,
                            //       ),
                            //       RichText(
                            //         text: TextSpan(
                            //             text: "from  ",
                            //             style: TextStyle(
                            //               fontSize: 30,
                            //               color: Color(0xFF0641AD),
                            //               fontWeight: FontWeight.w300,
                            //             ),
                            //             children: [
                            //               TextSpan(
                            //                   text: "500NG/h",
                            //                   style: TextStyle(
                            //                       fontWeight: FontWeight.bold,
                            //                       fontSize: 40,
                            //                       letterSpacing: 1.0)),
                            //             ]),
                            //       ),
                            //   ],
                            // ),
                            // ),
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
                                                  fontWeight: FontWeight.bold,
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
                                                    color: Color(0xFF0641AD),
                                                    fontWeight: FontWeight.w300,
                                                    letterSpacing: 1.0)),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 40,
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
            right: 0,
            child: Container(
              height: deviceSize.height / 2 - 60,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ListView(children: <Widget>[
                  ListTile(
                    leading: Checkbox(
                      value: checkBoxValueA,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValueA = value;
                        });
                      },
                    ),
                    title: Text("Full Training",
                        style: TextStyle(
                            color: Color(0xFF0641AD),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5)),
                    onTap: () {
                      setState(() {
                        checkBoxValueA = !checkBoxValueA;
                      });
                    },
                  ),
                  Divider(
                    height: 16,
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: checkBoxValueB,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValueB = value;
                        });
                      },
                    ),
                    title: Text("Buy Training Materials",
                        style: TextStyle(
                            color: Color(0xFF0641AD),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5)),
                    onTap: () {
                      setState(() {
                        checkBoxValueB = !checkBoxValueB;
                      });
                    },
                  ),
                  Divider(
                    height: 16,
                  ),
                  ListTile(
                    leading: Checkbox(
                      value: checkBoxValueC,
                      tristate: true,
                      onChanged: (value) {
                        setState(() {
                          checkBoxValueC = value;
                        });
                      },
                    ),
                    title: Text("Create Training Plan",
                        style: TextStyle(
                            color: Color(0xFF0641AD),
                            fontWeight: FontWeight.w500,
                            letterSpacing: 0.5)),
                    onTap: () {
                      setState(() {
                        checkBoxValueC = !checkBoxValueC;
                      });
                    },
                  ),
                  Divider(
                    height: 16,
                  )
                ]),
              ),
            ),
          ),
          Positioned(
            bottom: 3,
            right: 0,
            left: deviceSize.width / 2 + 80,
            child: InkWell(
              child: Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF0641AD)),
                  color: Color(0xFFE7CEC5),
                ),
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
                  builder: (BuildContext context) => ChatScreen(),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
