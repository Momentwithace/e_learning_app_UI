import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/models/course.dart';

class CourseDescription extends StatelessWidget {
  final Course course;
  const CourseDescription(this.course, {super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(course.authorImg,
              width: 20,),
              const SizedBox(width: 5),
              Text(course.author,
              style: const TextStyle(
                fontWeight: FontWeight.bold
              ),),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                height: 5,
                width: 5,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kFontLight
                ),
              ),
              const Icon(Icons.access_time_filled,
              size: 20,
              color: kAccent),
              const SizedBox(width: 5),
              const Text("1h 35 min",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: kFont
              ),)
            ],
          ),
          const SizedBox(width: 15),

          Text(course.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: kFont
          ),),
          const SizedBox(width: 5),
          const Text("Getting started with programming and Software development.\nand becoming the next big name in the tech space",
          style: TextStyle(
            wordSpacing: 2,
            color: kFontLight,
            fontWeight: FontWeight.w500
          ),)
        ],
      )
    );
  }
}
