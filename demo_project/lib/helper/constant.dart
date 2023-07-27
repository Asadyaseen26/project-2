// ignore_for_file: prefer_const_constructors




import 'package:flutter/material.dart';

double deviceWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double deviceHeight(BuildContext context) {
  return MediaQuery.of(context).size.height;
}

var globalColorDark = Colors.orangeAccent;
var globalColorLight = Colors.greenAccent;
var globalColorBackground = Colors.red.shade200;

var myAppBar = AppBar(
  backgroundColor: globalColorDark,
);
var mydrawer = Drawer(
  backgroundColor: globalColorDark,
  child:Column(
    // ignore: prefer_const_literals_to_create_immutables
    children: [
   DrawerHeader(
    child: Icon(
      Icons.person_2_outlined,
      color: globalColorLight)
   ),
   ListTile(
    leading: Icon(
      Icons.dashboard_rounded,
      color : globalColorLight
    ),
    title: Text('DASHBOARD')
   ),
      ListTile(
    leading: Icon(
      Icons.file_present,
      color : globalColorLight
    ),
    title: Text('File Queue')
   ),
    ListTile( 
    leading: Icon(
      Icons.file_copy,
      color : globalColorLight
    ),
    title: Text('Document Queue')
   ),
   ListTile(
    leading: Icon(
      Icons.mobile_friendly,
      color : globalColorLight
    ),
    title: Text('Register')
   ),
   ListTile(
    leading: Icon(
      Icons.account_box,
      color : globalColorLight
    ),
    title: Text('Account')
   ),
    ListTile(
    leading: Icon(
      Icons.logout_outlined,
      color : globalColorLight
    ),
    title: Text('Log out')
   ),
    ],
  ),
);
