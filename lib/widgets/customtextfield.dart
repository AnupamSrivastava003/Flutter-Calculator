import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.controller
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
      child: TextField(
        cursorWidth: 2,
        controller: controller ,
        style: const TextStyle(fontSize: 50),
        decoration: const InputDecoration(
          fillColor: Color.fromARGB(255, 16, 16, 16),
          filled: true,
          border: InputBorder.none,
        ),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}