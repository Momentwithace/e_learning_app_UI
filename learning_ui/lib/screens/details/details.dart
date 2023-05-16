import 'package:flutter/material.dart';
import 'package:learning_ui/models/course.dart';
import 'package:learning_ui/screens/details/widget/course_description.dart';
import 'package:learning_ui/screens/details/widget/course_progess.dart';
import 'package:learning_ui/screens/details/widget/custom_app_bar.dart';

class DetailsPage extends StatelessWidget {
  final Course course;
  const DetailsPage({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomAppBar(course),
            CourseDescription(course),
            CourseProgress()
          ],
        ),
      )
    );
  }
}