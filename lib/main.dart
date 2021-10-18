import 'package:flutter/material.dart';
import 'package:sign_in_sign_up_page/screen1/login_page_1.dart';
// import 'package:sign_in_sign_up_page/screen/signUp.dart';

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
      // home: Signup(),
    );
  }
}
