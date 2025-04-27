import 'package:cbt_nursing_app/main.dart';
import 'package:flutter/material.dart';

class LoginsignupButtons extends StatelessWidget {
  final text;
  final void Function()? ontap;
  const LoginsignupButtons({super.key, this.text, this.ontap});

  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: mq.height * 0.055,
        width: mq.width * 0.8,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
