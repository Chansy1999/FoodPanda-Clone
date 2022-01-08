import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodpanda_clone/pages/app.dart';
import 'package:foodpanda_clone/style/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: whiteColor,
      ),
    );
    return MaterialApp(
      title: 'foodpanda clone',
      theme: ThemeData(
        primarySwatch: appColor,
      ),
      home: const AppPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
