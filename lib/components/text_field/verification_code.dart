import 'package:flutter/material.dart';

class VerificationCodeField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey),
      height: 50,
      width: 50,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
