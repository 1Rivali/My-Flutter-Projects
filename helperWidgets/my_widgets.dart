// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/myScreens/account_options_screen.dart';
import 'package:flutter_application_3/mydata/data.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'my_text.dart';

Widget verticalSpace(double height) => SizedBox(
      height: height,
    );

Widget horizontalSpace(double width) {
  return SizedBox(
    width: width,
  );
}

AppBar buildAppBar(context) {
  return AppBar(
    backgroundColor: Color(0XFF282828),
    elevation: 5,
    shadowColor: Colors.transparent,
    title: Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.white,
              width: 10,
              height: 10,
            ),
            FaIcon(
              FontAwesomeIcons.youtube,
              color: Color(0XFFFF0000),
              size: 40,
            ),
          ],
        ),
        SizedBox(
          width: 5,
        ),
        Expanded(
          child: Text(
            'YouTube',
            style: TextStyle(fontSize: 19.9, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    ),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.cast_sharp)),
      IconButton(
        onPressed: () {},
        icon: Icon(CupertinoIcons.bell),
      ),
      IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.search)),
      SizedBox(
        width: 10,
      ),
      CircleAvatar(
        radius: 15,
        backgroundColor: Color(0XFFFF0000),
        child: TextButton(
          child: Text(
            "F",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AccountOptionsScreen()));
          },
        ),
      ),
      SizedBox(
        width: 15,
      ),
    ],
  );
}

Widget buildVideos(int index, context, int itemCount) => SizedBox(
      width: double.infinity,
      child: ListView.separated(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        separatorBuilder: (BuildContext context, int index) {
          return verticalSpace(10);
        },
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Card(
                    child: Image.asset(
                      '${thumbNails[index]}',
                      fit: BoxFit.fill,
                      width: double.infinity,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(4)),
                        child: Text(
                          '${vidLength[index]}',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(19, 10, 8, 12),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('${channelIcon[index]}'),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  '${vidTitle[index]}',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              IconButton(
                                  onPressed: () {
                                    buildMenue(
                                        context,
                                        600.0,
                                        6,
                                        videosMenueIcons,
                                        videosMenueTitle,
                                        false);
                                  },
                                  icon: Icon(
                                    CupertinoIcons.ellipsis_vertical,
                                    color: Colors.white,
                                  ))
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              MyText('${channelName[index]}', 15,
                                  FontWeight.w500, Colors.grey),
                              SizedBox(
                                width: 10,
                              ),
                              MyText('${views[index]}', 15, FontWeight.w500,
                                  Colors.grey),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: MyText('${vidPubDate[index]}', 15,
                                    FontWeight.w500, Colors.grey),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

Widget buildShorts(index, context) {
  return Row(
    children: [
      SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 250,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: 5,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 15,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              // alignment: Alignment.bottomLeft,
              children: [
                Image.asset(
                  "${shortsThumbs[index]}",
                  height: 250,
                ),
                Align(
                    alignment: Alignment.topRight,
                    child: SizedBox(
                      width: 180,
                      child: ListTile(
                        trailing: IconButton(
                            icon: Icon(Icons.more_vert),
                            onPressed: () {
                              buildMenue(context, 140, 2, shortsMenueIcons,
                                  shortsMenueTitle, false);
                            }),
                      ),
                    )),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 167,
                    height: 70,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.6),
                            spreadRadius: 5,
                            blurRadius: 7,
                          ),
                        ],
                        gradient: LinearGradient(
                            colors: const [Colors.black45, Colors.white12],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0))),
                  ),
                ),
                SizedBox(
                  height: 240,
                  width: 150,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${shortsTitle[index]}',
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '${views[index]}',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    ],
  );
}

buildShortsHeader(context) {
  return ListTile(
      leading: Icon(
        Icons.shuffle,
        color: Color(0XFFFF0000),
        size: 30,
      ),
      title: Text(
        'Shorts',
        style: TextStyle(
            fontSize: 22.0, color: Colors.white, fontWeight: FontWeight.w600),
      ),
      trailing: IconButton(
        onPressed: () {
          buildMenue(context, 60, 1, [Icon(CupertinoIcons.nosign)],
              ['Not interested'], false);
        },
        icon: Icon(
          CupertinoIcons.ellipsis_vertical,
          color: Colors.white,
        ),
      ));
}

buildMenue(context, double height, numOfItems, List icons, List itemTitle,
    bool isFullScr) {
  return showModalBottomSheet(
    isScrollControlled: isFullScr,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    backgroundColor: Color(0XFF282828),
    context: context,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        height: height,
        child: ListView.separated(
          physics: BouncingScrollPhysics(),
          itemCount: numOfItems,
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              height: 20,
            );
          },
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [
                CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.grey.shade700,
                    child: icons[index]),
                SizedBox(
                  width: 20,
                ),
                Text(
                  itemTitle[index],
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade500),
                )
              ],
            );
          },
        ),
      ),
    ),
  );
}
