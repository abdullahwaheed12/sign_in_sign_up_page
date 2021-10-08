import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class DataClass {
  static Decoration topContainerDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
          colors: [Colors.yellow.shade900, Colors.yellow.shade700],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter),
      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
    );
  }

  static CircleAvatar circleAvatar() {
    return CircleAvatar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.white,
        radius: 35,
        child: Icon(
          Icons.person_pin,
          size: 50,
          color: Colors.blue,
        )
        // backgroundImage: AssetImage('assets/images/image.jpg'),
        );
  }

  static MultiValidator passwordValidator() {
    return MultiValidator([
      RequiredValidator(errorText: 'This field is required'),
      MinLengthValidator(8,
          errorText: 'password must be at least 8 digits long'),
      PatternValidator(
          r'(?=.*?[#?!@$%^&*-])', // this will use regex to implement validation
          errorText: 'passwords must have at least one special character')
    ]);
  }

  static MultiValidator emailValidator() {
    return MultiValidator([
      EmailValidator(errorText: 'nat a valid email'),
      RequiredValidator(errorText: 'This field is required')
    ]);
  }
}
// MultiValidator([
  //   // MinLengthValidator(1, errorText: 'min length'),
  //   // MaxLengthValidator(3, errorText: 'max length'),
  //   // LengthRangeValidator(min: 2, max: 5, errorText: 'Range between 2 to 5'),
  //   // RangeValidator(min: 1, max: 2, errorText: 'Range validator'), is ma or length range validator ma koi fark ni
  //   // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'pattren')
  //   // DateValidator('dd/mm/yyyy', errorText: 'invalid date')
  // ]),