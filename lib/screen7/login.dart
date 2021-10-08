import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

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
      body: Stack(
        children: [
          //background container that clip on the top right
          Align(
            alignment: Alignment.topRight,
            child: ClipPath(
              clipper: MyCustomCliper(),
              child: Container(
                color: Color(0xfff7a03c),
                height: size.height * 0.25,
                width: size.width * 0.5,
              ),
            ),
          ),
          // login screen on the foreground
          Positioned(
            top: size.height * 0.22,
            child: Container(
              width: size.width,
              height: size.height * 0.8,
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Id:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: size.height * 0.01),
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f3),
                          filled: true),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Text(
                      'password:',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: size.height * 0.01),
                    TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f3),
                          filled: true),
                    ),
                    SizedBox(height: size.height * 0.1),
                    ElevatedButton(
                      clipBehavior: Clip.hardEdge,
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [Color(0xfffdb046), Color(0xfff78a2a)]),
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SizedBox(
                            height: size.height * 0.08,
                            width: size.width,
                            child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Login',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot password ?  ',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: size.height * 0.03),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        '- - - - - - - - - - - - - - - or - - - - - - - - - - - - - - -',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    ActionChip(
                      backgroundColor: Colors.blue,
                      avatar: Icon(
                        Icons.facebook,
                        size: 60,
                        color: Colors.white,
                      ),
                      label: SizedBox(
                        height: size.height * 0.08,
                        child: Align(
                            alignment: Alignment.center,
                            child: Text('Login with facebook',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                      ),
                      onPressed: () {},
                    ),
                  ]),
            ),
          ),
        ],
      ),
    );
  }
}

class MyCustomCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width * 0.04791797, size.height * 0.4247286);
    path_0.cubicTo(
        size.width * 0.1253400,
        size.height * 0.5389335,
        size.width * 0.3827160,
        size.height * 0.5568664,
        size.width * 0.5082653,
        size.height * 0.5946201);
    path_0.cubicTo(
        size.width * 0.6338146,
        size.height * 0.6323738,
        size.width * 0.6338146,
        size.height * 0.7928268,
        size.width * 0.7698263,
        size.height * 0.9155262);
    path_0.cubicTo(size.width * 0.9058380, size.height * 1.038226, size.width,
        size.height * 0.9910335, size.width, size.height * 0.9910335);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(size.width * 0.01757690, 0);
    path_0.cubicTo(
        size.width * 0.01757690,
        0,
        size.width * -0.03787403,
        size.height * 0.2991977,
        size.width * 0.04791797,
        size.height * 0.4247286);
    path_0.close();
    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
