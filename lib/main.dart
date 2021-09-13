import 'package:flutter/material.dart';
import 'package:personal_app/Profile/edit_profile.dart';
import 'package:personal_app/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const appTitle = "Welcome ";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle,),
    );
  }
}
