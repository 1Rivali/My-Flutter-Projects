// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/mydata/data.dart';

import '../helperWidgets/my_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF282828),
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SizedBox(
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              buildVideos(index, context, 1),
              buildShortsHeader(context),
              buildShorts(index, context),
              verticalSpace(25),
              buildVideos(index, context, 5),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(context),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => setState(() {
        currentIndex = index;
        if (currentIndex == 2) {
          buildMenue(context, 225.0, 3, addMenueIcons, addMenueTitle, false);
        }
      }),
      elevation: 10,
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      backgroundColor: Color(0XFF282828),
      selectedFontSize: 12,
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(CupertinoIcons.home),
            label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shuffle), label: 'Shorts'),
        BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 21,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 20,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                backgroundColor: Color(0XFF282828),
              ),
            ),
            label: 'Add'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.archive),
            icon: Icon(
              Icons.archive_outlined,
              size: 24,
            ),
            label: 'Subscriptions'),
        BottomNavigationBarItem(
            activeIcon: Icon(Icons.library_books),
            icon: Icon(Icons.library_books_outlined),
            label: 'Library'),
      ],
    );
  }
}
