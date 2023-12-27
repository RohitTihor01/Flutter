import 'package:flutter/material.dart';

class MyTextFiled extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextFiled({super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,

        decoration: InputDecoration(enabledBorder:  OutlineInputBorder(borderSide: const BorderSide(color: Colors.black),
            borderRadius: BorderRadius.circular(20.0),
        ),
            focusedBorder:  OutlineInputBorder(borderSide: const BorderSide(color: Colors.black),borderRadius: BorderRadius.circular(20.0)),
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[600]),

        ),
      ),
    );
  }
}
