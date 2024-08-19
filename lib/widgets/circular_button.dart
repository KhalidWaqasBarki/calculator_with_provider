import 'package:calculator_with_provider/constants/colors.dart';
import 'package:calculator_with_provider/providers/calculator_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyButton extends StatelessWidget {
  final VoidCallback onPress;
  final Color color;
  final Color textColor;
   final String title;
   final double fontSize ;


  const MyButton({
    super.key,
    required this.onPress,
     this.color = AppColors.secondaryColor ,
    required this.title,
     this.textColor = Colors.white,
     this.fontSize= 32,

  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.black,
       elevation: 10,
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(8),
        backgroundColor: color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(title,style: TextStyle(color: textColor, fontSize: fontSize, fontWeight: FontWeight.bold),),
      ),
    );
  }
}
