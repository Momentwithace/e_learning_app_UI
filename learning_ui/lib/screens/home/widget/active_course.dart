import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/screens/home/widget/category_title.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ActiveCourse extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const CategoryTitle(
           "Currently Active",
           "View all"
           ),
           Container(
            margin:const EdgeInsets.all(25),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: kFontLight.withOpacity(0.1),
              border: Border.all(
                color: kFontLight.withOpacity(0.3),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset("assets/images/progress2.png",
                      width: 60,),
                    ),
                    const SizedBox(width: 20,),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Symetry theory",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: kAccent
                          ),
                        ),
    
                        Text(
                          "2 lesson left",
                            style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: kFontLight
                          ),
                        )
                      ],
                    )
                  ],
                ),
                CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.61,
                  center: const Text("61",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  progressColor: kAccent,
                  )
              ],
            ),
           )
        ],
      ),
    );
  }
}