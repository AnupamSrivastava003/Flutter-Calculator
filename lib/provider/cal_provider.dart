import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class calculatorProvider extends ChangeNotifier{
  final compController = TextEditingController();

  setValue(String value){
    String str = compController.text;

    switch(value){
      case "AC":
        compController.clear();
        break;
      
      case "C":
        compController.text = str.substring(0, str.length - 1);
        break;

      case "X":
        compController.text += "*";
        break;

      case "=":
        compute();
        break;

      default:
        compController.text += value;
    }

    compController.selection = TextSelection.fromPosition(TextPosition(offset: str.length+1));
  }

  compute(){
    String text = compController.text;
    compController.text = text.interpret().toString();
  }

  @override
  void dispose() { 
    super.dispose();
    compController.dispose();
  }
}