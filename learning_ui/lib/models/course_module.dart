import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';

class Module{
  late Color iconBorder;
  late Color iconBackground;
  late Color iconColor;
  late IconData iconData;
  late String title;
  late String description;
  late Color moduleBorder;
  late Color moduleBgcolor;
  late Color buttonColor;
  late Color buttonFont;
  late String time;
  late String lesson;

  Module(
      this.iconBorder,
      this.iconBackground,
      this.iconColor,
      this.iconData,
      this.title,
      this.description,
      this.moduleBorder,
      this.moduleBgcolor,
      this.buttonColor,
      this.buttonFont,
      this.time,
      this.lesson);


  static List<Module> generateModules(){
    return [
      Module(
          kAccent,
          kAccent,
          Colors.white,
          Icons.play_arrow_rounded,
          "MODULE 1",
          "Steps to follow and Practices\nexercise to take!",
          kPrimaryLight,
          kPrimaryLight,
          kPrimary,
          kPrimaryDark,
          "22 min",
          "2 lesson"
      ),
      Module(
          kFontLight.withOpacity(0.3),
          Colors.white,
          kFontLight.withOpacity(0.7),
          Icons.lock_outline_rounded,
          "MODULE 2",
          "All you need to know about\nProgramming",
          kPrimaryLight,
          Colors.white,
          Colors.grey.withOpacity(0.2),
          Colors.grey,
          "52 min",
          "1 lesson"
      ),


    ];
  }
}

