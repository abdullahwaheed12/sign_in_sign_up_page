import 'package:flutter/material.dart';

class CustomFormField extends StatefulWidget {
  const CustomFormField(
      {Key? key,
      this.myController,
      this.hintText,
      this.labelText,
      required this.isEmail,
      required this.isUnderLimit,
      this.suffixIcon})
      : super(key: key);
  final TextEditingController? myController;
  final String? hintText;
  final String? labelText;
  final Widget? suffixIcon;
  final bool isUnderLimit;

  final bool isEmail;
  @override
  _CustomFormFieldState createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: widget.myController,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: widget.hintText,
          // suffixIcon: Icon(Icons.mail_outline),
          suffixIcon: widget.suffixIcon,
        ),
        validator: (value) {
          if (widget.isEmail) {
            if (!value!.contains(RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'))) {
              return 'Plese enter email address';
            }
          }

          if (widget.isUnderLimit) {
            if (value!.length < 5) {
              return 'enter more then 5 char';
            }
          }
          return null;
        },
      ),
    );
  }
}

typedef FormFieldValidator<T> = String? Function(T? value);

class CustomFormFieldWithValidate extends StatefulWidget {
  const CustomFormFieldWithValidate({
    Key? key,
    this.myController,
    this.hintText,
    this.labelText,
    this.validator,
    this.icon,
  }) : super(key: key);

  final FormFieldValidator<String>? validator;
  final TextEditingController? myController;
  final String? hintText;
  final String? labelText;
  final IconData? icon;

  @override
  _CustomFormFieldWithValidate createState() => _CustomFormFieldWithValidate();
}

class _CustomFormFieldWithValidate extends State<CustomFormFieldWithValidate> {
  var isFocus = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        focusNode: FocusNode(),

        onTap: () {},
        // autovalidate: true,
        // autovalidateMode: AutovalidateMode.always,
        controller: widget.myController,
        decoration: InputDecoration(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelText: widget.labelText,

          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: widget.hintText,
          hoverColor: Colors.blueGrey,
          // suffixIcon: Icon(Icons.mail_outline),
          suffixIcon: TextButton(
              onPressed: () {},
              child: Icon(
                widget.icon,
                color: Colors.grey,
              )),
        ),
        validator: widget.validator,
      ),
    );
  }
}
