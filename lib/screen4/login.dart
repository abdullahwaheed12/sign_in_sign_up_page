import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  static const Duration duration = const Duration(seconds: 1);
  late Size size;
  late double animFactor;
  var mainColor = Color(0xff696fdd);
  AlignmentGeometry _alignment = Alignment.topCenter;
  double opacity = 0;
  @override
  void initState() {
    animFactor = 0;
    Future.delayed(Duration(seconds: 1)).then((value) {
      animFactor = 110;
      opacity = 1;
      _alignment = Alignment.center;
      setState(() {});
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    var height = MediaQuery.of(context).size.height - 80;
    size = Size(MediaQuery.of(context).size.width, height);

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login screen',)
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // upper Container
          upperContainer(size, animFactor),
          // lower Container

          AnimatedOpacity(
            opacity: opacity,
            duration: duration,
            child: AnimatedContainer(
              alignment: _alignment,
              curve: Curves.bounceInOut,
              duration: duration,
              height: size.height * 0.5,
              width: size.width * 0.8,
              // color: Colors.white,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // TextField's Container
                  textFieldContainer(size, mainColor),
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  //Login button
                  login(size, mainColor),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      color: Colors.lightBlue.shade300,
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//_______________composible widgets__________

Widget upperContainer(Size size, double animfactor) {
  return SizedBox(
      height: size.height * 0.5,
      width: size.width,
      child: Stack(alignment: Alignment.center, children: [
        Image.asset('assets/background.png',
            fit: BoxFit.fill, width: size.width),
        AnimatedPositioned(
            duration: _LoginState.duration,
            curve: Curves.bounceOut,
            top: size.height * 0.05 + animfactor,
            right: size.width * 0.05,
            child: Image.asset('assets/clock.png')),
        AnimatedPositioned(
            duration: _LoginState.duration,
            left: size.width * 0.1,
            curve: Curves.bounceOut,
            bottom: size.height * 0.35 - animfactor,
            child: Image.asset('assets/light-1.png')),
        AnimatedPositioned(
            duration: _LoginState.duration,
            curve: Curves.bounceOut,
            left: size.width * 0.4,
            bottom: size.height * 0.45 - animfactor,
            child: Image.asset('assets/light-2.png')),
        Text(
          'Login',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ]));
}

//_____________login button__________________
Widget login(Size size, Color mainColor) {
  return ElevatedButton(
    onPressed: () {},
    child: Text('Login'),
    style: ElevatedButton.styleFrom(
      primary: mainColor,
      fixedSize: Size(size.width * 0.8, size.height * 0.07),
    ),
  );
}

//_____________Text Field Container__________

Widget textFieldContainer(Size size, Color mainColor) {
  return Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.grey,
              offset: Offset(0, 5),
              spreadRadius: 1,
              blurRadius: 4)
        ]),
    child: Column(
      children: [
        TextField(
          decoration: InputDecoration(
              hintText: 'Enter email or phone number',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none),
        ),
        Divider(),
        TextField(
          decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(color: Colors.grey),
              border: InputBorder.none),
        ),
      ],
    ),
  );
}
