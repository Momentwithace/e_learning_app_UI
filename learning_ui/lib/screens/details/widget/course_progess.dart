import 'package:flutter/cupertino.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/screens/details/widget/course_module.dart';

import '../../../models/course_module.dart';

class CourseProgress extends StatelessWidget {
  final moduleList = Module.generateModules();
  CourseProgress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("The Progress",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: kFont
              ),),
              Row(
                children: [
                  Image.asset("assets/icons/grid.png",
                  width: 25,),
                  const SizedBox(width: 15),
                  Image.asset("assets/icons/list.png",
                  width: 25,)
                ],
              )
            ],
          ),
          const SizedBox(height: 20),
          ...moduleList.map((module) => CourseModule(module)).toList()
          // CourseModule(moduleList[0])
        ],
      ),
    );
  }

}