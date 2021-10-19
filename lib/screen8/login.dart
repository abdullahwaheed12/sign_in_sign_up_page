import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade400.withAlpha(200),
        title: Text('Login'),
      ),
      body: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/bg_glass_morphic.jpg',
                ),
                fit: BoxFit.fill)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
            width: size.width * 0.8,
            height: size.height * 0.7,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.25),
                borderRadius: BorderRadius.circular(20)),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Column(
                    children: [
                      //15%
                      Container(
                          height: constraints.maxHeight * 0.15,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sign in',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                      //17%
                      SizedBox(
                        height: constraints.maxHeight * 0.17,
                        width: constraints.maxWidth,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            fillColor: Colors.black26,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                              10,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(
                                  10,
                                )),
                            hintText: 'Enter Email',
                            hintStyle: TextStyle(color: Colors.white),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //17%
                      SizedBox(
                        height: constraints.maxHeight * 0.17,
                        width: constraints.maxWidth,
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabled: true,
                            filled: true,
                            fillColor: Colors.black26,
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                              10,
                            )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                                borderRadius: BorderRadius.circular(
                                  10,
                                )),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            suffixIcon: Icon(
                              Icons.visibility,
                              color: Colors.white,
                            ),
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      //5%
                      SizedBox(
                        height: constraints.maxHeight * 0.05,
                      ),
                      //13%
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Login'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber.shade400.withAlpha(100),
                            side: BorderSide(color: Colors.black, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(constraints.maxWidth,
                                constraints.maxHeight * 0.13),
                            textStyle: TextStyle(fontSize: 20)),
                      ),
                      //13%
                      SizedBox(
                        height: constraints.maxHeight * 0.13,
                        width: constraints.maxWidth,
                        child: Column(
                          children: [
                            SizedBox(
                              height: constraints.maxHeight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Forget password?',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.height > 450 ? 15 : 8),
                                ),
                                Text(
                                  'Sign up',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.height > 450 ? 15 : 8),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: constraints.maxHeight * 0.01,
                            ),
                            LayoutBuilder(
                              builder: (context, constraints) {
                                return Row(
                                  children: [
                                    //45%
                                    Container(
                                      color: Colors.white,
                                      height: 2,
                                      width: constraints.maxWidth * 0.40,
                                    ),
                                    //20%
                                    SizedBox(
                                      width: constraints.maxWidth * 0.2,
                                      child: Center(
                                        child: Text('or',
                                            style: TextStyle(
                                              color: Colors.white,
                                            )),
                                      ),
                                    ),
                                    //40%
                                    Container(
                                      color: Colors.white,
                                      height: 2,
                                      width: constraints.maxWidth * 0.40,
                                    ),
                                  ],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      //13%
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Sign up'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.amber.shade400.withAlpha(100),
                            side: BorderSide(color: Colors.black, width: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            fixedSize: Size(constraints.maxWidth,
                                constraints.maxHeight * 0.13),
                            textStyle: TextStyle(fontSize: 20)),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
