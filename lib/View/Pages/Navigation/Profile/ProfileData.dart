import 'package:flutter/material.dart';

class ProfileData extends StatefulWidget {
  @override
  _ProfileDataState createState() => _ProfileDataState();
}

class _ProfileDataState extends State<ProfileData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Edit Profile',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff1C1C1C),
                fontFamily: 'Gordita',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        body: ListView(
          physics: BouncingScrollPhysics(),
          children: [],
        ));
  }
}
