import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    bool isNotifications = true;
    return Drawer(
      backgroundColor: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red.shade600.withOpacity(0.3),
          ),
          child: ListView(
            children: [
              const DrawerHeader(
                child: Image(
                  image: AssetImage("assets/netflix.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              _drawerItem(
                  onTap: () {}, iconData: CupertinoIcons.house, title: "Home"),
              _drawerItem(
                  onTap: () {},
                  iconData: CupertinoIcons.search,
                  title: "Search"),
              _drawerItem(
                  onTap: () {},
                  iconData: CupertinoIcons.play,
                  title: "Playlist"),
              _drawerItem(
                  onTap: () {},
                  iconData: Icons.notifications,
                  title: "Notifications",
                  trailing: isNotifications == true
                      ? const Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 20),
                        )
                      : null),
              const Divider(
                color: Colors.white,
                endIndent: 20,
                indent: 20,
              ),
              _drawerItem(
                  onTap: () {},
                  iconData: CupertinoIcons.settings,
                  title: "Settings"),
              _drawerItem(
                  onTap: () {}, iconData: CupertinoIcons.info, title: "Help"),
              _drawerItem(
                  onTap: () {}, iconData: Icons.logout, title: "Log Out"),
            ],
          ),
        ),
      ),
    );
  }

  ListTile _drawerItem(
          {required VoidCallback onTap,
          required IconData iconData,
          required String title,
          Widget? trailing}) =>
      ListTile(
        onTap: onTap,
        leading: Icon(
          iconData,
          color: Colors.white,
        ),
        title: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
        trailing: trailing,
      );
}
