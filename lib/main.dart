import 'package:flutter/material.dart';
import 'package:flutter_onboard_homeview/feature/onboard/view/onboard_screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff293855),
        backgroundColor: const Color(0xff293855),
        primaryColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: const OnBoardScreen(),
    );
  }
}
