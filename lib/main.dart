import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:job_finder_flutter/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return MaterialApp(
      title: 'Job Finder App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Color(0xFFFED408)),
      ),
      home: HomePage(),
    );
  }
}
