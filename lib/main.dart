import 'package:blunch/View/Pages/Home/HomeScreen.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_Order.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_notification.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_profile.dart';
import 'package:blunch/View/Pages/Location/Select_Location.dart';
import 'package:blunch/View/Pages/Home/SplashScreen.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_setting.dart';
import 'package:blunch/View/Pages/Navigation/Profile/ProfileData.dart';
import 'package:blunch/View/Util/Address/Address_book.dart';
import 'package:blunch/View/Util/change_password.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blunch',
      theme: ThemeData(backgroundColor: Colors.white),
      initialRoute: '/',
      //home: SplashSceen(),
      routes: {
        '/': (context) => SplashSceen(),
        '/home': (context) => HomeScreen(),
        'location': (context) => LocationScreen(),
        '/order': (context) => OrderScreen(),
        '/profile': (context) => ProfileScreen(),
        '/notification': (context) => NotificationScreen(),
        '/setting': (context) => SettingScreen(),
        '/change_password': (context) => ChangePassword(),
        '/address': (context) => Address(),
        '/profile_data': (context) => ProfileData(),
      },
    );
  }
}
