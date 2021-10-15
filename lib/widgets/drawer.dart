// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://image.freepik.com/free-vector/abstract-blue-background_1048-1511.jpg";
    return Drawer(

      child: Container(
        //color: Colors.blue,
        child: ListView(
          // ignore: prefer_const_literals_to_create_immutables
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader
            (
              padding: EdgeInsets.zero,
              //margin: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                //margin: EdgeInsets.zero,
               /* decoration: BoxDecoration(
                  color: Colors.white,
                ),*/
                accountName: Text("Devansh Sahani",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                accountEmail: Text("sahanidev21@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
                //currentAccountPicture: Image.network(imageUrl),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
                )
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home,color: Colors.blue),
              title: Text("Home",
                style: TextStyle(fontSize: 19),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.profile_circled,color: Colors.blue),
              title: Text("profile",
                style: TextStyle(fontSize: 19),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.mail,color: Colors.blue),
              title: Text("Email Me",
                style: TextStyle(fontSize: 19),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
