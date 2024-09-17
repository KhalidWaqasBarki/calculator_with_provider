import 'package:calculator_with_provider/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/calculator_provider.dart';
import '../widgets/circular_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final calculatorProvider = Provider.of<CalculatorProvider>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  width: double.infinity,

                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          alignment: Alignment.centerRight,
                          child: Text(
                            calculatorProvider.userInput,
                            style: const TextStyle(fontSize: 35, color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(15),
                          alignment: Alignment.centerRight,
                          child: Text(
                            calculatorProvider.answer,
                            style: const TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ]),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MyButton(
                        title: 'AC',
                        fontSize: 23,
                        onPress: () {
                          calculatorProvider.clearInput();
                        },
                      ),
                      MyButton(
                        title: '+/-',
                        fontSize: 22,

                        onPress: () {
                          // Handle +/- operation
                        },
                      ),
                      MyButton(
                        title: '%',
                        onPress: () {
                          calculatorProvider.appendInput('%');
                        },
                      ),
                      MyButton(
                        title: '/',
                        textColor: Colors.yellowAccent,
                        onPress: () {
                          calculatorProvider.appendInput('/');
                        },
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      MyButton(
                        title: '7',
                        onPress: () {
                          calculatorProvider.appendInput('7');
                        },
                      ),
                      MyButton(
                        title: '8',
                        onPress: () {
                          calculatorProvider.appendInput('8');
                        },
                      ),
                      MyButton(
                        title: '9',
                        onPress: () {
                          calculatorProvider.appendInput('0');
                        },
                      ),
                      MyButton(
                        title: 'x',
                        textColor: Colors.yellowAccent,

                        onPress: () {
                          calculatorProvider.appendInput('x');
                        },
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      MyButton(
                        title: '4',
                        onPress: () {
                          calculatorProvider.appendInput('4');
                        },
                      ),
                      MyButton(
                        title: '5',
                        onPress: () {
                          calculatorProvider.appendInput('5');
                        },
                      ),
                      MyButton(
                        title: '6',
                        onPress: () {
                          calculatorProvider.appendInput('6');
                        },
                      ),
                      MyButton(
                        title: '-',                        textColor: Colors.yellowAccent,

                        onPress: () {
                          calculatorProvider.appendInput('-');
                        },
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      MyButton(
                        title: '1',
                        onPress: () {
                          calculatorProvider.appendInput('1');
                        },
                      ),
                      MyButton(
                        title: '2',
                        onPress: () {
                          calculatorProvider.appendInput('2');
                        },
                      ),
                      MyButton(
                        title: '3',
                        onPress: () {
                          calculatorProvider.appendInput('3');
                        },
                      ),
                      MyButton(
                        title: '+',                        textColor: Colors.yellowAccent,

                        onPress: () {
                          calculatorProvider.appendInput('+');
                        },
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                    children: [
                      MyButton(
                        title: '0',
                        onPress: () {
                          calculatorProvider.appendInput('0');
                        },
                      ),
                      MyButton(
                        title: '.',
                        onPress: () {
                          calculatorProvider.appendInput('.');
                        },
                      ),
                      MyButton(
                        title: 'DEL',
                        textColor: Colors.redAccent,

                        fontSize: 22,
                        onPress: () {
                          calculatorProvider.deleteInput();
                        },
                      ),
                      MyButton(
                        title: '=',                        textColor: Colors.yellowAccent,

                        onPress: () {
                          calculatorProvider.calculate();
                        },
                        color: AppColors.blueColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
