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
        title: Text('Login'),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        decoration: boxDecoration(),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              spacer(),
              Text(
                'Welcome back with your crediential',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              spacer(),
              textField('Email'),
              spacer(),
              textField('Password'),
              spacer(),
              customButton('Login', Colors.blue),
              spacer(),
              lastLine()
            ]),
      ),
    );
  }


  ///
//  last line of the screen
  ///
  Widget lastLine() {
    return GestureDetector(
      onTap: () {
        print('you tab on sing up');
      },
      child: RichText(
          text: TextSpan(children: [
        TextSpan(text: "Don't have an account?"),
        TextSpan(
            text: "  SignUp",
            style: TextStyle(color: Colors.blue, fontSize: 20))
      ])),
    );
  }

  ///
//   Spacer create spacer between two widget
  ///
  Widget spacer([double heightFactor = 0.05]) {
    return SizedBox(
      height: size.height * 0.05,
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
