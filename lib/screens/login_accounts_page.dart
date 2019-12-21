import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:serviceapp/screens/create_acount_screen.dart';
import 'package:serviceapp/screens/login_page.dart';

class LoginAccounts extends StatefulWidget {
  @override
  _LoginAccountsState createState() => _LoginAccountsState();
}

class _LoginAccountsState extends State<LoginAccounts> {
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
        height: deviceSize.height,
        width: deviceSize.width,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome to \n Jobtize",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                _socialButtons(
                    text: "continue with google",
                    color: Color(0xffDB4437),
                    icon: FontAwesomeIcons.google),
                SizedBox(
                  height: 15,
                ),
                _socialButtons(
                    text: "continue with linkedin",
                    color: Color(0xff0e76a8),
                    icon: FontAwesomeIcons.linkedinIn),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: double.infinity,
                  child: OutlineButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CreateAcountPage(),
                          ));
                    },
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    child: Text("Create Account".toUpperCase()),
                    textColor: Colors.lightBlueAccent,
                    borderSide: BorderSide(color: Colors.lightBlueAccent),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 65,
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 10),
                      child: Text(
                        "Got an account?",
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          )),
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          color: Colors.lightBlueAccent,
                          fontSize: 17,
                          decoration: TextDecoration.underline,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                RichText(
                  text:
                      TextSpan(style: TextStyle(color: Colors.grey), children: [
                    TextSpan(
                      text: "By signup, i agree to Jobtize's ",
                    ),
                    TextSpan(
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      text: "Terms of Service",
                    ),
                    TextSpan(
                      text: " and",
                    ),
                    TextSpan(
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                      text: " Privacy and Policy",
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialButtons(
      {String text, Color color, IconData icon, Color iconColor}) {
    return SizedBox(
      width: double.infinity,
      child: MaterialButton(
        color: color,
        textColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 18,
            ),
            Text(text.toUpperCase(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.2)),
          ],
        ),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CreateAcountPage(),
          ),
        ),
      ),
    );
  }
}
