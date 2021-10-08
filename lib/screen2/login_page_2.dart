import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('android app'),
      ),
      body: Container(
        color: Colors.blue.shade800,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.unsubscribe_rounded, color: Colors.white),
                    hintText: 'Username',
                    hintStyle: TextStyle(color: Colors.white30)),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    icon: Icon(
                      Icons.lock,
                      color: Colors.white,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white30)),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Forgot the password?',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton.icon(
                onLongPress: () => print('long pressed'),
                onPressed: null,
                label: Text('Login'),
                icon: Icon(Icons.login),
                style: ElevatedButton.styleFrom(
                  primary: Colors.pink,
                  onPrimary: Colors.amberAccent,
                  onSurface: Colors.white,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'create account now?',
                overflow: TextOverflow.fade,
                softWrap: false,
                textAlign: TextAlign.center,
                strutStyle: StrutStyle(height: 14),
                style: TextStyle(color: Colors.white),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
                // style: ButtonStyle(shape: MaterialStateProperty.all( RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)))),

                // color: Colors.red,
                child: Row(children: [
                  SizedBox(
                    width: 20,
                    height: 40,
                  ),
                  Icon(Icons.facebook),
                  SizedBox(
                    width: 130,
                  ),
                  Text('Login from facebook'),
                ]),
                onPressed: () => print('pressed'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
