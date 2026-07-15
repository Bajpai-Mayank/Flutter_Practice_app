import 'package:flutter/material.dart';
import 'package:my_first_app/widget/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation bar",
        style: TextStyle(
          color:Colors.white,
          fontSize:25,
        ),),
        backgroundColor: Color(0xFFFF0000),
      ),
      body: Center(
        child: Text(
          "login page",
          style: TextStyle(fontSize: 40),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
