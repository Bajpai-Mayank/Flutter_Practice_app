import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://i.pinimg.com/1200x/7a/34/f5/7a34f5bf09e75b480306182a67a88031.jpg";
    return Drawer(
      child: Container(
        color: Colors.red,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              margin:EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              accountName: Text("Nyctophile"),
              accountEmail: Text("Starmoon@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),title:Text(
                "Home",
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),title:Text(
                "Profile",
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.white
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.search,
                color: Colors.white,
              ),title:Text(
                "Search",
                style: TextStyle(
                  fontSize: 20,
                  color:Colors.white
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
