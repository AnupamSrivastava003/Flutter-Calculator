import 'package:calculator/provider/cal_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class equalsbutton extends StatelessWidget {
  const equalsbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
         Provider.of<calculatorProvider>(context,listen: false).setValue("=");
      },
      child: Container(
        height: 160, 
        width: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.blue,
        ),
        child: Center(child: Text("=", style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),)),
      ),
    );
  }
}