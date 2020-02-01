import 'package:flutter/material.dart';
import 'package:serviceapp/screens/login_page.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    print("${deviceSize.height}");
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: "Anton ",
                  style: TextStyle(
                      fontSize: 22,
                      color: Color(0xFF0641AD),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.0),
                  children: [
                    TextSpan(
                        text: "R.",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                        )),
                  ]),
            ),
            Text(
              "2m ago.",
              style: TextStyle(
                color: Color(0xFF0641AD),
                fontSize: 14.0,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        elevation: 0.0,
        automaticallyImplyLeading: false,
        leading: Builder(
          builder: (BuildContext context) {
            return InkWell(
              child: FittedBox(
                fit: BoxFit.contain,
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      color: Colors.blueAccent,
                      iconSize: 80,
                      onPressed: () {},
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      backgroundImage: AssetImage("assets/bgpic.jpg"),
                      maxRadius: 60,
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            );
          },
        ),
      ),
      body: Container(
        height: deviceSize.height,
        width: deviceSize.width,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 20,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  // width: deviceSize.width,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              width: 200,
                              color: Color(0xFFCFF8FD),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                        "You added <<create training plan>> task",
                                        style: TextStyle(
                                            color: Color(0xFF0641AD),
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("12:45 PM",
                                          style: TextStyle(
                                              color: Color(0xFF0641AD),
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: 0.5)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 200,
                              color: Color(0xFFCFF8FD),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text("Okay Am Coming, St PeterBurg Right.",
                                        style: TextStyle(
                                            color: Color(0xFF0641AD),
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.5)),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8.0),
                                      child: Text("12:46 PM",
                                          style: TextStyle(
                                              color: Color(0xFF0641AD),
                                              fontWeight: FontWeight.w300,
                                              letterSpacing: 0.5)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                child: TextField(
                  textInputAction: TextInputAction.next,
                  style: TextStyle(fontSize: 18, color: Color(0xff323232)),
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    hintText: "Write a message..",
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(0.0))),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(0.0))),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(0.0))),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
