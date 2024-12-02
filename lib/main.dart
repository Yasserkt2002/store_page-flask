// ignore_for_file: prefer_const_constructors, unused_import, unused_local_variable

import 'package:flutter/material.dart';
import 'package:stores/Models/stroe_model.dart';
import 'package:stores/pages/home_page.dart';
import 'package:stores/pages/store_page.dart';

void main() {
  runApp(const MyApp());
}
//void main() => runApp(DevicePreview(builder: (context) => MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home_page(),
    );
  }
}
