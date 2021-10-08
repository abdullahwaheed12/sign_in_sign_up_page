import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../custom_form_field.dart';
import 'data_file.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  final _myControllerForPassword = TextEditingController();
  final _myControllerForEmial = TextEditingController();
  var iconColor = Colors.green;
  var focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    _myControllerForPassword.addListener(() {
      // will call every change to the textField
    });

    focusNode.addListener(() {
      setState(() {});
      if (focusNode.hasFocus) {
        iconColor = Colors.blue;
      } else {
        iconColor = Colors.green;
        focusNode.unfocus();
      }
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _myControllerForPassword.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(10),
                width: double.infinity,
                height: 200,
                decoration: DataClass.topContainerDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DataClass.circleAvatar(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomFormFieldWithValidate(
                        validator: RequiredValidator(
                            errorText: 'This fiel is required'),
                        hintText: 'Enter your username',
                        labelText: 'Username',
                        icon: Icons.person,
                      ),
                      // TextFormField(
                      //   focusNode: focusNode,
                      //   decoration: InputDecoration(
                      //     border: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(20),
                      //     ),

                      //     hintText: 'enter email ',
                      //     labelText: 'email',
                      //     suffixIcon: TextButton(
                      //       child: Icon(Icons.mail_outline, color: iconColor,),
                      //       onPressed: () {},
                      //     ),
                      //   ),
                      // ),
                      CustomFormFieldWithValidate(
                        myController: _myControllerForEmial,
                        icon: Icons.mail_outline,
                        hintText: 'Enter your email',
                        labelText: 'Email',
                        validator: DataClass.emailValidator(),
                      ),
                      CustomFormFieldWithValidate(
                        myController: _myControllerForPassword,
                        validator: DataClass.passwordValidator(),
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        icon: Icons.remove_red_eye_outlined,
                      ),
                      CustomFormFieldWithValidate(
                        validator: (String? value) {
                          if (value != _myControllerForPassword.text) {
                            return 'password not match';
                          }
                          return null;
                        },
                        labelText: 'Conirm password',
                        hintText: 'Enter Password again',
                        icon: Icons.verified_user,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(300, 50),
                          primary: Colors.yellow.shade800,
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
