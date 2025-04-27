import 'package:flutter/material.dart';

class Loginsignuptextfields extends StatelessWidget {
  final hintText;
  final labelText;
  final bool secure;
  final TextEditingController controller;
  const Loginsignuptextfields({
    super.key,
    this.hintText,
    this.labelText,
    required this.controller,
    required this.secure,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        obscureText: secure,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          border: const OutlineInputBorder(),
          focusColor: Colors.black,
        ),
      ),
    );
  }
}
