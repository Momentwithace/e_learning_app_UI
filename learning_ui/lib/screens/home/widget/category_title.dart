import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';

class CategoryTitle extends StatelessWidget {
  final String leftText;
  final String rightText;
  const CategoryTitle(this.leftText, this.rightText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(leftText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: kFont
          ),),
          Text(rightText,
           style: const TextStyle(
            fontSize: 16,  
            color: kFontLight
          ),
          )
        ],
      ),
    );
  }
}