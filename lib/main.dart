import 'package:flutter/material.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/pages/main_page.dart';
import 'package:project/styles/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: "Urbanest",
        scaffoldBackgroundColor: AppColors.Background,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
