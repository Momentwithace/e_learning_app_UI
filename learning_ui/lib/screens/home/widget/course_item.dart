import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/models/course.dart';
import 'package:learning_ui/screens/details/details.dart';

class CourseItem extends StatelessWidget {
  final Course course;
  const CourseItem(this.course, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: kPrimaryLight,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 2,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)
                    ),
                    child: Image.asset(course.imageUrl,
                    fit: BoxFit.cover,),
                  )
                  ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(course.authorImg, width: 20,),
                            const SizedBox(width: 5,),
                            Text(course.author, 
                            style:const TextStyle(
                              fontWeight: FontWeight.bold
                            ),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(course.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: kFont 
                            ),),
                            Container(
                              margin: const EdgeInsets.symmetric(horizontal: 5),
                              width: 5,
                              height: 5,
                              decoration: const BoxDecoration(
                                color: kFontLight,
                                shape: BoxShape.circle
                              ),
                            ),
                            const Text("2h 22min",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: kFontLight
                            ),)
                          ],
                        )
                      ],
                    ),
                  )
                  )
              ],
            ),
          ) ,
          Positioned(
            bottom: 60,
            right: 20,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kAccent,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailsPage(course: course,)));
              }, 
              child: const Text("Start")
              )
          )
        ],
      )
    );
  }
}