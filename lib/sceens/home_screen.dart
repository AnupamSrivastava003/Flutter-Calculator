import 'package:calculator/provider/cal_provider.dart';
import 'package:calculator/widgets/allbutton.dart';
import 'package:calculator/widgets/customtextfield.dart';
import 'package:calculator/widgets/equalbuttoncustome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.sizeOf(context).height;
    final padding = EdgeInsets.symmetric(horizontal: 15, vertical: 30);
    return Consumer<calculatorProvider> (
      builder: (context, provider, _) {
        return Scaffold(
            backgroundColor: Colors.black,
            appBar: AppBar(
              title: const Text("Calculator", 
              style: TextStyle(
                fontWeight:FontWeight.bold,
                ),
              ),
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: [
              
                CustomTextField(controller: provider.compController,),

                const Spacer(),

                Container(
                  height: screenHeight * 0.6,
                  width: double.infinity,
                  padding: padding,
                  decoration: BoxDecoration(
                     color: const Color.fromARGB(255, 20, 20, 20),
                     borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4, (index) => buttonList[index]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4, (index) => buttonList[index+4]),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          4, (index) => buttonList[index+8]),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    3, (index) => buttonList[index+12]),
                                ),
                                SizedBox(height: 20,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: List.generate(
                                    3 , (index) => buttonList[index+15]),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(width: 30,),

                          equalsbutton()
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
      }
    );
  }
}



