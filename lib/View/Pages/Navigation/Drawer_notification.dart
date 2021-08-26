import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Notification',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff1C1C1C),
              fontFamily: 'Gordita',
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
              padding: EdgeInsets.only(top: 70, left: 24, right: 24),
              child: Column(
                children: [
                  Container(
                    child: Image.asset('assets/notification_1.png'),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Text(
                    "No Notifications Yet",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1A1A1A),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "We’ll notify you once we have something for you",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
