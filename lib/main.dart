import 'package:flutter/material.dart';
import 'package:serviceapp/screens/login_accounts_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Service App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/bgpic.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 25,
            bottom: 0,
            left: 12,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "JOBTIZE",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    letterSpacing: 0.2),
              ),
            ),
          ),
          Positioned(
            left: 0,
            bottom: 14,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "How can we help \n you?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.blue[400],
                        textColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 15),
                        child: Text('start working'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.2)),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginAccounts(isCustomerOrServiceOwner: false,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: MaterialButton(
                        color: Colors.white,
                        textColor: Colors.blue[400],
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 15),
                        child: Text('start hiring'.toUpperCase(),
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.2,
                            )),
                        onPressed: () {
                          // setState(() {
                            
                          // });
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginAccounts(isCustomerOrServiceOwner: true,),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
