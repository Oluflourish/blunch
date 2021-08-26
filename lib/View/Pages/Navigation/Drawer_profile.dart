import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            RaisedButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, '/profile_data');
                },
                child: Text(
                  'Edit',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff7B0304),
                      fontFamily: 'Gordita',
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                ))
          ],
          title: Text(
            'Profile',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff1C1C1C),
                fontFamily: 'Gordita',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Column(
          children: [],
        )));
  }
}
