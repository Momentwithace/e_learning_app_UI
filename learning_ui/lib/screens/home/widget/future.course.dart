import 'package:flutter/material.dart';
import 'package:learning_ui/screens/home/widget/course_item.dart';

import '../../../models/course.dart';
import 'category_title.dart';

class FutureCourse extends StatelessWidget {
  final courseList = Course.generateCourses();
 FutureCourse({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          const CategoryTitle(
            'Top of the week', 
             'view all',
            ),
            SizedBox(
              height: 300,
              child: ListView.separated(
                padding: const EdgeInsets.all(25),
                scrollDirection: Axis.horizontal,
                itemCount: courseList.length,
                itemBuilder: (context, index) => CourseItem(courseList[index]), 
                separatorBuilder: (context,index) => const SizedBox(width: 35,),
              ),
            )
        ],
    );
  } 
}