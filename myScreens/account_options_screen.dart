// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/helperWidgets/my_widgets.dart';
import 'package:flutter_application_3/mydata/data.dart';

class AccountOptionsScreen extends StatefulWidget {
  const AccountOptionsScreen({Key? key}) : super(key: key);

  @override
  State<AccountOptionsScreen> createState() => _AccountOptionsScreenState();
}

class _AccountOptionsScreenState extends State<AccountOptionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF282828),
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 0,
        backgroundColor: Color(0XFF282828),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
            top: 12.0, left: 13.0, right: 13.0, bottom: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 26,
                  backgroundColor: Color(0XFFFF0000),
                  child: Text(
                    "F",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                horizontalSpace(15),
                Text(
                  'Fady Al-Habib',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
            Text(
              'Manage your Google Account',
              style: TextStyle(color: Colors.blue),
            ),
            verticalSpace(15),
            Divider(
              thickness: 1,
              height: 10,
              color: Colors.grey.shade600,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (BuildContext context, int index) {
                  return verticalSpace(10);
                },
                itemBuilder: (BuildContext context, int index) {
                  return buildItems(accountOptinosItemsIcons, index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

buildItems(List icons, index) {
  return Padding(
    padding: const EdgeInsets.only(top: 12.0),
    child: Row(
      children: [
        icons[index],
        horizontalSpace(15),
        Text(
          '${accountOptinosItemsTitles[index]}',
          style: TextStyle(color: Colors.white, fontSize: 20),
        )
      ],
    ),
  );
}
