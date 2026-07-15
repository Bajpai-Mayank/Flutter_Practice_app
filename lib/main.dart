import "package:flutter/material.dart";
import 'package:my_first_app/pages/home_page.dart';
import 'package:my_first_app/utils/routes.dart';
import 'pages/login_page.dart';
import 'widget/themes.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme:MyTheme.darkTheme(context),
      routes: {
        "/":(context)=> MyHomePage(),
        MyRoutes.homeRoute:(context) => MyHomePage(),
        MyRoutes.loginRoute:(context) => LoginPage(),        
      },
    );
  }
}
