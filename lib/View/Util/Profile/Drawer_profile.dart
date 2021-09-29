import 'package:blunch/Model/Profile_model/Profile_util.dart';
import 'package:blunch/Provider/ProfileProvider.dart';
import 'package:blunch/View/Util/Profile/EditProfile.dart';
import 'package:blunch/View/Util/Profile/ProfileData.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final user = Profile_util.getUser();
  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.height;
    setState(() {});

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          RaisedButton(
              elevation: 0,
              color: Colors.white,
              onPressed: () async {
                await Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        //EditProfile())
                        ProfileData()));
                setState(() {});
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
        child: Consumer<ProfileProvider>(
          builder: (context, profile, child) =>
              // child:
              Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Color(0xffF6F6F6),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      user.display_name,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff1A1A1A),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    Text(
                      user.email.toString(),
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff8D9091),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16, left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    buildText("Display name"),
                    //Sort display name
                    buildUserData(user.display_name.toString()),
                    SizedBox(
                      height: 24,
                    ),
                    buildText("First Name"),
                    buildUserData(user.first_name.toString()),
                    SizedBox(
                      height: 24,
                    ),
                    buildText("Last Name"),
                    buildUserData(user.last_name.toString()),
                    SizedBox(
                      height: 24,
                    ),
                    buildText("Phone Number"),
                    buildUserData(user.phone.toString()),
                    SizedBox(
                      height: 24,
                    ),
                    buildText("Email Address"),
                    buildUserData(user.email.toString()),
                    SizedBox(
                      height: 24,
                    ),
                    buildText("Delivery Address"),
                    buildUserData(user.address.toString()),
                    SizedBox(
                      height: 24,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Text buildText(String name) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 14,
          color: Color(0xff8D9091),
          fontFamily: 'Gordita',
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
    );
  }

  Text buildUserData(String name) {
    return Text(
      name,
      style: TextStyle(
          fontSize: 16,
          color: Color(0xff1A1A1A),
          fontFamily: 'Gordita',
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal),
    );
  }
}
