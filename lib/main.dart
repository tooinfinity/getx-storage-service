import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/modules/home/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Flutter Getx Folder Structure',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
