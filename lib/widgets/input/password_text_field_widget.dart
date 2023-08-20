import 'package:flutter/material.dart';
import 'package:mouridepro/constants.dart';

class PasswordTextField extends StatefulWidget {
  final String hintText;
  final FormFieldValidator<String> validator;
  final TextEditingController controller;

  const PasswordTextField({Key? key, required this.hintText, required this.validator, required this.controller})
      : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          TextFormField(
            obscureText: !_passwordVisible,
            controller: widget.controller,
            validator: widget.validator,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
              filled: true,
              fillColor: Colors.grey[200],
              hintText: widget.hintText,
              hintStyle: TextStyle(color: Colors.grey[400]),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[400]!, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 1.0),
                borderRadius: BorderRadius.circular(4.0),
              ),
            ),
          ),
          IconButton(
            icon: Icon(
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: defaultColor,
            ),
            onPressed: () {
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
        ],
      ),
    );
  }
}
