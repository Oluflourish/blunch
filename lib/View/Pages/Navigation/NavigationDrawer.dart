import 'dart:ui';

import 'package:flutter/material.dart';

class NavigationDrawerWidget extends StatefulWidget {
  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName: Image.asset("assets/hello.png"),
              accountEmail: Row(
                children: [
                  Text(
                    "Please ",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/sign_up');
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 12,
                          color: Color(0xff8D9091),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
                  Text(
                    " here!",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                ],
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              leading: Icon(
                Icons.person_outline,
                color: Color(0xff8D9091),
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8D9091),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.receipt,
                color: Color(0xff8D9091),
              ),
              title: Text(
                "Orders",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8D9091),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/order');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none,
                color: Color(0xff8D9091),
              ),
              title: Text(
                "Notification",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8D9091),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/notification');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Color(0xff8D9091),
              ),
              title: Text(
                "Setting",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8D9091),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.exit_to_app_outlined,
                color: Color(0xff8D9091),
              ),
              title: Text(
                "Log Out",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff8D9091),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
