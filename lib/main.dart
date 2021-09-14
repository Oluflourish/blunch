import 'package:blunch/Model/Profile_model/Profile_util.dart';
import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/FridayList.dart';
import 'package:blunch/Provider/ThursdayList.dart';
import 'package:blunch/Provider/Tuesdayinventory.dart';
import 'package:blunch/Provider/WednesdayList.dart';
import 'package:blunch/View/Pages/Home/HomeScreen.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_Order.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_notification.dart';
import 'package:blunch/View/Pages/Widgets/Cart.dart';
import 'package:blunch/View/Util/Address/Add_address.dart';
import 'package:blunch/View/Util/Profile/Drawer_profile.dart';
import 'package:blunch/View/Pages/Location/Select_Location.dart';
import 'package:blunch/View/Pages/Home/SplashScreen.dart';
import 'package:blunch/View/Pages/Navigation/Drawer_setting.dart';
import 'package:blunch/View/Util/Profile/ProfileData.dart';
import 'package:blunch/View/Util/Address/Address_book.dart';
import 'package:blunch/View/Util/change_password.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Profile_util.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) {
            return CartInventory();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return DayTwo();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return DayThree();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return DayFour();
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return DayFive();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Blunch',
        theme: ThemeData(
            primaryColor: Colors.grey,
            backgroundColor: Colors.white,
            disabledColor: Color(0xff)),
        initialRoute: '/',
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
          //   '/add_address': (context) => Add_address(),
          '/cart': (context) => CartScreen(),
        },
      ),
    );
  }
}
