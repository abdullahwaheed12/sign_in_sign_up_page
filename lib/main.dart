import 'package:flutter/material.dart';

import 'screen7/login.dart';
import 'screen6/signUp.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: Hello(),
      home: Login(),
      // home: SignUp(),
    );
  }
}


