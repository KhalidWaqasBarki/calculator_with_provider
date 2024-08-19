import 'package:flutter/material.dart';

import '../constants/colors.dart';
class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

      },
      child: Container(

        height: 160,
        width: 70,
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(40),
          color: AppColors.blueColor,
        ),
        child: const Center(child: Text(
          '=',style: TextStyle(fontSize: 32),
        )),
      ),
    );
  }
}
