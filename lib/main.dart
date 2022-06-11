import 'package:cloned_pak_grocer_app/pages/card.dart';
import 'package:cloned_pak_grocer_app/pages/homepage.dart';
import 'package:cloned_pak_grocer_app/pages/perks.dart';

import 'package:flutter/material.dart';

import 'mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloned Pak Grocer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}
