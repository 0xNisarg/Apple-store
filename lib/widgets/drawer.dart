import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final imgurl = 
    "https://p77-va.tiktokcdn.com/tos-maliva-avt-0068/560a777d467be38df4914916ecc3b525~c5_720x720.jpeg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName:  Text("Hannah owo"),
                accountEmail: Text("hannah@onlyfans.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imgurl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, 
              color: Colors.white,
              ),
              title: Text("Home",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
              ListTile(
              leading: Icon(CupertinoIcons.profile_circled, 
              color: Colors.white,
              ),
              title: Text("Profile",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons. mail, 
              color: Colors.white,
              ),
              title: Text("Mail",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons. chat_bubble_text_fill, 
              color: Colors.white,
              ),
              title: Text("Chat",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons. gamecontroller_alt_fill, 
              color: Colors.white,
              ),
              title: Text("Twitch",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons. info_circle_fill, 
              color: Colors.white,
              ),
              title: Text("Info",
              textScaleFactor: 1.2, 
              style: TextStyle(
                color: Colors.white
              )
              ),
            ),
          ],
        ),
      ),
    );
  }
}