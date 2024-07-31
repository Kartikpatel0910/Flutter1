import 'package:flutter/material.dart';

class custom_textfield extends StatefulWidget {
  

  const custom_textfield({
    super.key,
    required this.keyboardType,
    required this.text,
    required this.labeltext,
    required this.obscuretext,
    required this.controller,
    required this.hinttext, 
    required this.validator, 
     this.maxLength, 
    required bool hideCounter, 

  });

  final TextInputType keyboardType;
  final String text;
  final String labeltext, hinttext;
  final bool obscuretext;
  final TextEditingController controller;
  final String? Function(String? value) validator;
  final int? maxLength;



  @override
  State<custom_textfield> createState() => _custom_textfieldState();
}

class _custom_textfieldState extends State<custom_textfield> {
  @override
  Widget build(BuildContext context) {

    return TextFormField(
       
      obscureText: widget.obscuretext,
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        counterText: '',
        prefix: Text(
          widget.text,
          style: TextStyle(color: Colors.black),
        ),
        labelText: widget.labeltext,
        hintText: widget.hinttext,
        hoverColor: Colors.green[600],
        focusColor: Colors.amber,
      
      ),
      validator: widget.validator,
      maxLength: widget.maxLength,
    );
  }
}
