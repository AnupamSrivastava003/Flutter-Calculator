import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Button1 extends StatelessWidget {
  const Button1({
    super.key, required this.label, this.textColor = Colors.white
  });

  final String label;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<calculatorProvider>(context, listen: false).setValue(label); 
      },
      child: Material(
        elevation: 7,
        color: Color.fromARGB(255, 42, 42, 42),
        borderRadius: BorderRadius.circular(50),
        child: CircleAvatar(
          backgroundColor: Color.fromARGB(255, 38, 38, 38),
          radius: 36,
          child: Text(label, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600, color: textColor),),
          ),
      ),
    );
  }
}