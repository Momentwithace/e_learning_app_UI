import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(      
      child: Stack(
        children: [
          Container(
          margin: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: kFontLight.withOpacity(0.3) ,
              width: 2
            )
          ),
            child: TextField(
              cursorColor: kFontLight,
              decoration: InputDecoration(
                fillColor: kFontLight.withOpacity(0.1),
                filled: true,
                contentPadding:const EdgeInsets.all(18),
                border: InputBorder.none,
                hintText: "Search for history, classes....",
                hintStyle: const TextStyle(
                  color: kFontLight
                )
              ),
            ),
          ),
          Positioned(
            right: 45,
            top: 38,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: kAccent,
                borderRadius: BorderRadius.circular(8)
              ),
              width: 30,
              child:Image.asset("assets/icons/magnifying-glass.png"),
            )
          )
        ],
      ),
    ); 
  }
}