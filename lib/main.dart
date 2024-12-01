import 'package:ace_google_clone/colors.dart';
import 'package:ace_google_clone/responsive/responsive_layout.dart';
//import 'package:ace_google_clone/screens/home_screen.dart';
import 'package:ace_google_clone/screens/mobile_screen.dart';
//import 'package:ace_google_clone/screens/search_ui.dart';
import 'package:ace_google_clone/screens/web_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(
        //colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ).copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayoutScreen(
        mobileScreenLayout: MobileScreen(),
        webScreenLayout: WebScreen(),
      ),
      //home: SearchUi(),
    );
  }
}
