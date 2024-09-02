import 'package:flutter/material.dart';
import 'package:travel_app/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(64, 147, 206, 100),
        useMaterial3: true,
      ),
      home: const LandingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 