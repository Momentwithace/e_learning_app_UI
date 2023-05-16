import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/models/course.dart';

class CustomAppBar extends StatelessWidget {
  final Course course;
  const CustomAppBar(this.course, {super.key });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40)
                ),
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset(course.imageUrl,
                  fit: BoxFit.fitHeight,),
                ),
              ),
              Container(
                height: 28,
              )
            ],
          ),
          Positioned(
            bottom: 0,
            right: 40,
            child: Container(
              height: 50,
              width: 110,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kAccent,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)
                  )
                ),
                onPressed: (){

                }, 
                child: const Text("Start Class")
                ),
            )
            ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 25,
            child: Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.only(left: 5),
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                icon: const Icon(Icons.arrow_back_ios,
                color: Colors.black,),
                iconSize: 20,
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            )
            ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            right: 25,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.3),
                borderRadius: BorderRadius.circular(15)
              ),
              child: IconButton(
                onPressed: () {
                  
                }, icon: const  Icon(
                Icons.bookmark,
                color: Colors.white,
              ),
                iconSize: 20,
              ),
            )
          )
        ],
      )
    );
  }
}