import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:serviceapp/main.dart';
import 'package:serviceapp/screens/profile_order_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isPasswordVisibe = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(
        width: deviceSize.width,
        height: deviceSize.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 18, color: Color(0xff323232)),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Phone Number'.toUpperCase(),
                      labelStyle: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 14,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff999999)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      // contentPadding: const EdgeInsets.all(10.0),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 18, color: Color(0xff323232)),
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: !isPasswordVisibe ? false : true,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(
                          !isPasswordVisibe
                              ? FontAwesomeIcons.eye
                              : FontAwesomeIcons.eyeSlash,
                          color: Colors.lightBlue,
                          size: 23,
                        ),
                        onPressed: () {
                          setState(() {
                            isPasswordVisibe = !isPasswordVisibe;
                            print(isPasswordVisibe);
                          });
                        },
                      ),
                      labelText: 'password'.toUpperCase(),
                      labelStyle: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 14,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff999999)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      // contentPadding: const EdgeInsets.all(10.0),
                    ),
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
                    child: Text('Login'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.2)),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileOrderPage(),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Powered by jobtize",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
