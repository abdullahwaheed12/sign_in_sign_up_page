import 'package:flutter/material.dart';
import '../custom_form_field.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myController.dispose();
    super.dispose();
  }

  var colorList = [Colors.grey, Colors.blue];
  var index = 0;
  var isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundImage: AssetImage('assets/images/image.jpg'),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Welcome Back',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomFormField(
                      isUnderLimit: false,
                      isEmail: true,
                      hintText: 'Enter your E-mail',
                      labelText: 'E-mail',
                      myController: myController,
                      suffixIcon: TextButton(
                        child: Icon(Icons.mail_outline),
                        onPressed: () {},
                      ),
                    ),
                    CustomFormField(
                      isEmail: false,
                      isUnderLimit: true,
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      suffixIcon: TextButton(
                        child: Icon(
                          Icons.remove_red_eye_outlined,
                        ),
                        onPressed: () {},
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: CheckboxListTile(
                            value: isCheck,
                            onChanged: (value) {
                              setState(
                                () {
                                  isCheck = value!;
                                },
                              );
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text('Remember'),
                            activeColor: Colors.green,
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Text(
                              'ForgotPassword',
                              style:
                                  TextStyle(decoration: TextDecoration.underline),
                            ))
                      ],
                    ),
                    
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(300, 50),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          );
                        }
                      },
                      child: const Text(
                        'CONTINUE',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
