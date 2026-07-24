import 'package:flutter/material.dart';
import 'package:my_first_app/models/catalog.dart';
import 'package:my_first_app/widget/Items_widget.dart';
import 'package:my_first_app/widget/drawer.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productData = decodedData["products"];
    CatalogModel.products = List.from(
      productData,
    ).map((item) => Item.fromMap(item)).toList();
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModel.products[0]);
    return Scaffold(
      appBar: AppBar(title: Text("Cataog App")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:(CatalogModel.products.isNotEmpty)? ListView.builder(
          itemCount: CatalogModel.products.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: CatalogModel.products[index]);
          },
        ): Center(
          child: CircularProgressIndicator(
            backgroundColor:Colors.black,
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
