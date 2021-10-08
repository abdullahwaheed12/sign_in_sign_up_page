import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late Size size;
  @override
  void didChangeDependencies() {
    size = Size(MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height - 86);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('login'),
      ),
      body: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(width: size.width, height: size.height / 3),
                 
                  Text(
                    'LOGIN',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'UserName'),
                  ),
                 
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: 'Password'),
                  ),
                  SizedBox(
                    height: size.width * 0.02,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot your password?',
                        style: TextStyle(color: Colors.blue),
                      )),
                  SizedBox(
                    height: size.width * 0.05,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Login'),
                      style: ElevatedButton.styleFrom(
                          primary: Color(0xffff9323),
                          fixedSize: Size(size.width * 0.5, size.height * 0.07),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                    ),
                  ),
                  SizedBox(
                    height: size.height*0.03,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(text: TextSpan(
                      children: [
                        TextSpan(text:"Don't have an account?" ,style: TextStyle(color: Colors.blue)),
                        TextSpan(text: '   Sign Up',style: TextStyle(color: Colors.blue)),
                      ]
                    )),
                  ),
                ],
              ),
            ),
          ),
          //top shades
          Positioned(
              top: 0,
              left: 0,
              child: ClipPath(
                clipper: MyCustomClipper3(),
                child: Container(
                  height: 250,
                  width: size.width,
                  color: Color(0xffd7e2fe),
                ),
              )),

          Positioned(
              top: 0,
              left: 0,
              child: ClipPath(
                clipper: MyCustomClipper4(),
                child: Container(
                  height: 150,
                  width: size.width,
                  color: Color(0xff7ea1fb).withOpacity(0.5),
                ),
              )),
          //bottom shades
          Positioned(
              bottom: 0,
              left: 0,
              child: ClipPath(
                clipper: MyCustomClipper2(),
                child: Container(
                  height: 150,
                  width: size.width,
                  color: Color(0xffd7e2fe),
                ),
              )),

          Positioned(
              bottom: 0,
              left: 0,
              child: ClipPath(
                clipper: MyCustomClipper1(),
                child: Container(
                  height: 250,
                  width: size.width,
                  color: Color(0xff7ea1fb).withOpacity(0.8),
                ),
              )),
        ],
      ),
    );
  }
}

class MyCustomClipper1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9999653, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.cubicTo(0, 0, size.width * 0.1707047, size.height * 0.04654154,
        size.width * 0.2746872, size.height * 0.2029545);
    path_0.cubicTo(
        size.width * 0.3786697,
        size.height * 0.3593674,
        size.width * 0.3852206,
        size.height * 0.4242614,
        size.width * 0.4999827,
        size.height * 0.6513382);
    path_0.cubicTo(
        size.width * 0.6543621,
        size.height * 0.9259298,
        size.width * 0.9999653,
        size.height * 0.9120264,
        size.width * 0.9999653,
        size.height * 0.9120264);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper2 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.5312706, size.height * 0.4997626);
    path_0.cubicTo(size.width * 0.7738124, size.height * 0.6618555, size.width,
        size.height * 0.1364543, size.width, size.height * 0.1364543);
    path_0.lineTo(size.width * 0.9996189, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, 0);
    path_0.cubicTo(0, 0, size.width * 0.1687745, size.height * 0.08878549,
        size.width * 0.2745920, size.height * 0.2029247);
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper3 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9981469, size.height * 0.8379693);
    path_0.cubicTo(
        size.width * 0.9981469,
        size.height * 0.8379693,
        size.width * 1.002286,
        size.height,
        size.width * 0.9981469,
        size.height);
    path_0.cubicTo(
        size.width * 0.9028970,
        size.height * 1.000874,
        size.width * 0.8132683,
        size.height * 0.7810809,
        size.width * 0.7905986,
        size.height * 0.6994371);
    path_0.lineTo(size.width * 0.7573043, size.height * 0.5792120);
    path_0.arcToPoint(Offset(size.width * 0.6042992, size.height * 0.2853161),
        radius:
            Radius.elliptical(size.width * 0.9613318, size.height * 0.8504836),
        rotation: 0,
        largeArc: false,
        clockwise: false);
    path_0.lineTo(size.width * 0.6042992, size.height * 0.2853161);
    path_0.cubicTo(
        size.width * 0.5230095,
        size.height * 0.2064594,
        size.width * 0.3428871,
        size.height * 0.1081480,
        size.width * 0.1799370,
        size.height * 0.09011421);
    path_0.cubicTo(
        size.width * 0.01698684, size.height * 0.07208044, 0, 0, 0, 0);
    path_0.lineTo(size.width * 0.9981469, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyCustomClipper4 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.9981469, size.height * 0.8379693);
    path_0.cubicTo(
        size.width * 0.9981469,
        size.height * 0.8379693,
        size.width * 1.002286,
        size.height,
        size.width * 0.9981469,
        size.height);
    path_0.cubicTo(
        size.width * 0.9743035,
        size.height,
        size.width * 0.9459510,
        size.height * 0.9885240,
        size.width * 0.9137068,
        size.height * 0.9738784);
    path_0.cubicTo(
        size.width * 0.5554389,
        size.height * 0.8108093,
        size.width * 0.5994811,
        size.height * 0.4083283,
        size.width * 0.4705047,
        size.height * 0.2942237);
    path_0.lineTo(size.width * 0.4705047, size.height * 0.2942237);
    path_0.cubicTo(
        size.width * 0.4705047,
        size.height * 0.2942237,
        size.width * 0.3448638,
        size.height * 0.1688070,
        size.width * 0.2022979,
        size.height * 0.1530138);
    path_0.cubicTo(
        size.width * 0.03934771, size.height * 0.1349801, 0, 0, 0, 0);
    path_0.lineTo(size.width * 0.9981469, 0);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
