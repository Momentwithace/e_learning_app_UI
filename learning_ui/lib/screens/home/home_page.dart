import 'package:flutter/material.dart';
import 'package:learning_ui/constants/color.dart';
import 'package:learning_ui/screens/home/widget/active_course.dart';
import 'package:learning_ui/screens/home/widget/future.course.dart';
import 'package:learning_ui/screens/home/widget/serach_input.dart';

import 'widget/emoji_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const EmojiText(),
            const SearchInput(),
            FutureCourse(),
            ActiveCourse()
          ],
        ),
      ),
      bottomNavigationBar:const _BuildBottomNavBar(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      centerTitle: false,
      title: const Text("Hello Page",
      style: TextStyle(
        color: kFontLight,
        fontSize: 16
      ),),
      actions: [
        Stack(
          children: [
            Container(
              margin:const EdgeInsets.only(top: 10, right: 10),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                border: Border.all(
                  color: kFontLight.withOpacity(0.3),
                  width: 2
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(
                "assets/icons/notification2.png",
                width: 20,
              ),
            ),
            Positioned(
              top: 16,
              right: 19,
              child: Container(
                 height: 8,
                 width: 8,
                 decoration:const BoxDecoration(
                  color: kAccent,
                  shape: BoxShape.circle
                 ),
              )
            )
          ],
        )
      ],

    );
  }
}

class _BuildBottomNavBar extends StatelessWidget {
  const _BuildBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: kBackgroundColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          label: "Home",
          icon: Container(
            padding: const EdgeInsets.only(bottom: 5),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: kAccent,
                  width: 5
                ) 
                )
            ),
            child: const Text("Home", 
            style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
          )
          ),
        BottomNavigationBarItem(
          label: "Calendar",
          icon: Image.asset("assets/images/calendar.png", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "Bookmark",
          icon: Image.asset("assets/images/ribbon.png", width: 20,)
          ),
        BottomNavigationBarItem(
          label: "User",
          icon: Image.asset("assets/images/user.png", width: 20,)
          )
      ],
    );
  }
}
