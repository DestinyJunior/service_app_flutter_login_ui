import 'package:flutter/material.dart';

class LoginAccouts extends StatefulWidget {
  @override
  _LoginAccoutsState createState() => _LoginAccoutsState();
}

class _LoginAccoutsState extends State<LoginAccouts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Container(),
    );
  }
}
