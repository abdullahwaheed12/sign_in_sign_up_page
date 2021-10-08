import 'dart:ui';

import 'package:flutter/material.dart';

class Hello extends StatefulWidget {
  const Hello({Key? key}) : super(key: key);

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  late Size size;
  @override
  void didChangeDependencies() {
    size =Size(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height-86) ;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('Welcome Screen')),
      body: Container(
        decoration: boxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.1,
            ),
            Text(
              'Hello There!',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.05,
            ),
            qutesText(),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.1,
            ),
            Image.asset(
              'assets/officeMen.png',
              height: size.height * 0.3,
              width: size.width*0.8,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: double.infinity,
              height: size.height * 0.1,
            ),
            customButton('Login', Colors.blue),
            SizedBox(
              height: size.height * 0.02,
            ),
            customButton('Sign Up', Colors.red),
          ],
        ),
      ),
    );
  }

  //_________helping methods and composed widget______________
  ///
//   Custom Button for sign up and login
  ///

  Widget customButton(String text, Color bgColor) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(
          primary: bgColor,
          elevation: 20,
          fixedSize: Size(size.width * 0.8, size.height * 0.08),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
    );
  }

  ///
//  Qutes Text
  ///

  Widget qutesText() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      child: Text(
        'Automatic identity verification which enable you to verify your identity',
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  ///
//  Box decoration for entire screen
  ///

  Decoration boxDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Color(0xffbdc3c7),
          Color(0xff2c3e50),
        ],
        stops: [
          0,
          1,
        ],
      ),
    );
  }

}
