// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/myScreens/add_screen.dart';
import 'package:flutter_application_3/myScreens/home_screen.dart';
import 'package:flutter_application_3/myScreens/library_screen.dart';
import 'package:flutter_application_3/myScreens/shorts_screen.dart';
import 'package:flutter_application_3/myScreens/subscription_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List thumbNails = [
  'images/thumbnail.jpeg',
  'images/thumbnail2.jpg',
  'images/thumbnail3.jpg',
  'images/thumbnail4.jpg',
  'images/thumbnail5.jpg'
];
List channelIcon = [
  'images/avPhoto1.jpg',
  'images/avPhoto2.jpg',
  'images/avPhoto3.jpg',
  'images/avPhoto4.jpg',
  'images/avPhoto5.jpg',
];
List vidTitle = [
  'Things you need to start your youtube channel',
  'Learn how to make youtube',
  'YOUTUBE REWIND',
  'Last to leave the room wins 100k\$',
  'How to increase your views on youtube!!!'
];

List vidLength = [
  '10:30',
  '12:57',
  '10:12',
  '11:06',
  '09:30',
];
List vidPubDate = [
  '2 years ago',
  '30 minutes ago',
  '3 years ago',
  '4 years ago',
  '10 minutes ago'
];
List views = [
  '800K',
  '658K',
  '100M',
  '84M',
  '243K',
];
List channelName = [
  'Nick Nimmin',
  'Justin Brown - Primal Video',
  'YouTube',
  'MrBeast',
  'Think Media',
];
List shortsThumbs = [
  'images/shortsThumb1.jpg',
  'images/shortsThumb2.jpg',
  'images/shortsThumb3.jpg',
  'images/shortsThumb4.jpg',
  'images/shortsThumb5.jpg',
  'images/shortsThumb6.jpg',
];
final screens = [
  HomeScreen(),
  ShortsScreen(),
  AddScreen(),
  SubscriptionScreen(),
  LibraryScreen()
];

int currentIndex = 0;
bool isLabeled = false;

List addMenueIcons = [
  Icon(Icons.shuffle),
  Icon(Icons.arrow_upward),
  Icon(Icons.wifi_tethering)
];

List addMenueTitle = ['Create a Short', 'Upload a video', 'Go live'];

List shortsTitle = [
  'How to make YouTube Shorts Thumbnails !!',
  'How to get more views on YouTube Shorts!!!',
  'How to make MONEY \$\$ only from YouTube Shorts',
  'The best 12 Creative Ideas for makeing YouTube Shorts',
  'How to get more YouTube Subscribers in a short period of time',
];

List<Icon> shortsMenueIcons = [
  Icon(CupertinoIcons.nosign),
  Icon(Icons.feedback)
];

List<String> shortsMenueTitle = ['Not interested', 'Send Feedback'];
List<String> videosMenueTitle = [
  'Save to watch later',
  'Save to playlist',
  'Share',
  'Not interested',
  'Don\'t recommend channel',
  'Report'
];
List<Icon> videosMenueIcons = [
  Icon(CupertinoIcons.clock),
  Icon(Icons.library_add),
  Icon(CupertinoIcons.share),
  Icon(CupertinoIcons.nosign),
  Icon(CupertinoIcons.nosign),
  Icon(Icons.report)
];

List accountOptinosItemsIcons = [
  Icon(
    Icons.person_outline,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.person,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.person_add,
    color: Colors.white,
    size: 30,
  ),
  FaIcon(
    FontAwesomeIcons.dollarSign,
    color: Colors.white,
    size: 30,
  ),
  FaIcon(
    FontAwesomeIcons.clock,
    color: Colors.white,
    size: 30,
  ),
  FaIcon(
    FontAwesomeIcons.faceDizzy,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.settings,
    color: Colors.white,
    size: 30,
  ),
  Icon(
    Icons.help,
    color: Colors.white,
    size: 30,
  ),
  FaIcon(
    FontAwesomeIcons.youtube,
    color: Colors.red,
    size: 30,
  ),
  FaIcon(
    FontAwesomeIcons.youtube,
    color: Colors.red,
    size: 30,
  ),
];
List accountOptinosItemsTitles = [
  "Your channel",
  "Turn on Incognito",
  "Add account",
  "Purshases and memberships",
  "Time watched",
  "Your data in YouTube",
  "Settings",
  "Help & feedback",
  "YouTube Studio",
  "YouTube Kids"
];
