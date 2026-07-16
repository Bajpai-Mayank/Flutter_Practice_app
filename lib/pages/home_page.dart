import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widget/Items_widget.dart';
import 'package:my_first_app/widget/drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    final dummyList =  List.generate(20,(index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Cataog App"),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dummyList.length,
          itemBuilder: (context, index) {
             return ItemWidget(item: dummyList[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
