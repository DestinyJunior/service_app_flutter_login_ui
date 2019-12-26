import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateAcountPage extends StatefulWidget {
  @override
  _CreateAcountPageState createState() => _CreateAcountPageState();
}

class _CreateAcountPageState extends State<CreateAcountPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  bool isPasswordVisibe = true;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    print("Height : ${deviceSize.height}");
    print("Width : ${deviceSize.width}");

    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: deviceSize.height,
          width: deviceSize.width,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "Create  account.",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: deviceSize.height / 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 18, color: Color(0xff323232)),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'email id'.toUpperCase(),
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
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    style: TextStyle(fontSize: 18, color: Color(0xff323232)),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      labelText: 'Address'.toUpperCase(),
                      labelStyle: TextStyle(
                        color: Colors.lightBlue,
                        fontSize: 13,
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
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                        labelText: 'Phone Number'.toUpperCase(),
                        labelStyle: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 13,
                        ),
                        hintText: "Enter Phone Number",
                        alignLabelWithHint: true,
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0xff999999)),
                        ),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)),
                        // contentPadding: const EdgeInsets.all(10.0),
                        helperText:
                            "Employers will call you on this number if  you're \n successfull. Rest assured we will never share your \n details with 3rd parties",
                        helperStyle: TextStyle(color: Color(0xff363636))),
                  ),
                ),
                SizedBox(
                  height: deviceSize.height / 7,
                ),
                SizedBox(
                  width: double.infinity,
                  child: MaterialButton(
                    color: Colors.blue[400],
                    textColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 15),
                    child: Text('continue'.toUpperCase(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.2)),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAcountPage(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
