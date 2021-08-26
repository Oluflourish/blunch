import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff1C1C1C),
              fontFamily: 'Gordita',
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 14, top: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
              leading: Icon(
                Icons.person_outline,
                color: Color(0xff1A1A1A),
              ),
              title: Text(
                "Profile",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff1A1A1A),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.location_on_sharp,
                color: Color(0xff1A1A1A),
              ),
              title: Text(
                "Address Book",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff1A1A1A),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/address');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.notifications_none,
                color: Color(0xff1A1A1A),
              ),
              title: Text(
                "Notification",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff1A1A1A),
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
                Icons.vpn_key_outlined,
                color: Color(0xff1A1A1A),
              ),
              title: Text(
                "Change Password",
                style: TextStyle(
                    fontSize: 14,
                    color: Color(0xff1A1A1A),
                    fontFamily: 'Gordita',
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal),
              ),
              onTap: () {
                Navigator.pushNamed(context, '/change_password');
              },
            ),
          ],
        ),
      ),
    );
  }
}
