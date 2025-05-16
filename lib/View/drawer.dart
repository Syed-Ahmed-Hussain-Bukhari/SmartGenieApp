import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:my_smart_genie/Utils/Utils.dart';

class MyDrawer extends StatelessWidget {
  final User? user = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: MyColors.mainColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(user?.displayName ?? "No Name"),
            accountEmail: Text(user?.email ?? "No Email"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: user?.photoURL != null
                  ? NetworkImage(user!.photoURL!)
                  : AssetImage("assets/images/wappGPTlogo.png") as ImageProvider,
            ),
            decoration: BoxDecoration(
              color: MyColors.mainColor,
            ),
          ),
          // ListTile(
          //   leading: Icon(Icons.person),
          //   title: Text("Profile"),
          //   onTap: () {
          //     // Navigate to profile screen
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.settings),
          //   title: Text("Settings"),
          //   onTap: () {
          //     // Navigate to settings screen
          //   },
          // ),
          // ListTile(
          //   leading: Icon(Icons.logout),
          //   title: Text("Logout"),
          //   onTap: () async {
          //     await FirebaseAuth.instance.signOut();
          //     Navigator.of(context).pop(); // Close drawer
          //     // Navigate to login screen
          //   },
          // ),
        ],
      ),
    );
  }
}
