import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
        title: Text('Sign Up'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: boxDecoration(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacer(),
              Text(
                'Create an account its free',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              spacer(),
              textField('Email'),
              spacer(),
              textField('Password'),
              spacer(),
              textField('Confirm Password'),
              spacer(),
              customButton('Sign up', Colors.blue),
              spacer(),
              lastLine()
            ]),
      ),
    );
  }

  ///
//   Other option if already have an account
  ///
  Widget lastLine() {
    return GestureDetector(
      onTap: () {
        print('you tab on Login');
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: "Already have an account?"),
        TextSpan(
            text: " Login", style: TextStyle(color: Colors.blue, fontSize: 20))
      ])),
    );
  }

  ///
//   spacer that create empty space between tow widgets
  ///
  Widget spacer([double heightFactor = 0.05]) {
    return SizedBox(
      height: size.height * heightFactor,
    );
  }

  ///
//   Custom Text Field
  ///

  Widget textField(String text) {
    return SizedBox(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '$text:',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          TextField(
            cursorColor: Colors.white,
            cursorHeight: 30,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }

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
          fixedSize: Size(size.width * 0.9, size.height * 0.08),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      onPressed: () {},
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
