import 'package:blunch/Model/Profile_model/profile_model.dart';
import 'package:blunch/Provider/ProfileProvider.dart';
import 'package:blunch/View/Util/Address/Add_address.dart';
import 'package:flutter/material.dart';
import 'package:blunch/Model/Profile_model/Profile_util.dart';
import 'package:provider/provider.dart';

class EditProfile extends StatefulWidget {
  final String text;
  const EditProfile({
    Key key,
    this.text,
  }) : super(key: key);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var user = Profile_util.myUser;
  final text = Profile_util.myUser;
  TextEditingController displaycontroller = new TextEditingController();
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController addresscontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();

  //TextEditingController controller;

  // @override
  // void initState() {
  //   controller = TextEditingController();
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }

  //_ProfileDataState(this.controller);

  void onSaveAddress() {
    print('saved');
    ProfileMode profileMode = ProfileMode(
        first_name: firstnamecontroller.text,
        last_name: lastnamecontroller.text,
        display_name: displaycontroller.text,
        email: emailcontroller.text,
        phone: phonecontroller.text,
        address: addresscontroller.text);

    Provider.of<ProfileProvider>(context).addProfile(profileMode);
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    Provider.of<ProfileProvider>(context).initialState();
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
      body: SafeArea(
        child: SingleChildScrollView(
          // height: MediaQuery.of(context).size.height,
          child: Column(
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundColor: Color(0xffF6F6F6),
                      ),
                      Positioned(
                          bottom: 5,
                          right: 2,
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                                child: Image.asset("assets/gallery_icon.png")),
                          )),
                    ]),
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
                      user.address,
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
                padding: EdgeInsets.only(top: 16, left: 24, right: 24),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    children: [
                      //buildText("Display name"),
                      SizedBox(
                        height: 4,
                      ),
                      TextFormField(
                        controller: displaycontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: firstnamecontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: lastnamecontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: addresscontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: emailcontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),
                      TextFormField(
                        controller: phonecontroller,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(
                              fontSize: 14,
                              color: Color(0xff14142B),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  //color:
                                  ),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                      SizedBox(
                        height: 24,
                      ),

                      SizedBox(
                        height: 25,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          //alignment: Alignment.center,
                          height: 60,
                          width: double.infinity,
                          child: RaisedButton(
                            child: Text(
                              "Save",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Gordita',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                            color: Color(0xfff7B0304),
                            textColor: Colors.white,
                            onPressed: () {
                              // Navigator.popAndPushNamed(context, '/profile');
                              // Navigator.pop(context);
                              Navigator.of(context).pop(true);
                              onSaveAddress();
                              //  Profile_util.setUser(user);
                              // setState(() {});
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                        ),
                      ),
                      //PopupMenuButton(itemBuilder: itemBuilder)
                    ],
                  ),
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

class ProfileWidget extends StatefulWidget {
  final String text;
  final String label;
  final ValueChanged<String> onChanged;

  const ProfileWidget({
    key,
    @required this.text,
    @required this.label,
    @required this.onChanged,
  }) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  //TextEditingController controller;
  TextEditingController displaycontroller = new TextEditingController();
  TextEditingController firstnamecontroller = new TextEditingController();
  TextEditingController lastnamecontroller = new TextEditingController();
  TextEditingController addresscontroller = new TextEditingController();
  TextEditingController phonecontroller = new TextEditingController();
  TextEditingController emailcontroller = new TextEditingController();

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   controller = TextEditingController(text: widget.text);
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   controller.dispose();
  // }

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // "Data",
            widget.label,
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff8D9091),
                fontFamily: 'Gordita',
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal),
          ),
          SizedBox(
            height: 4,
          ),
          TextFormField(
            onChanged: widget.onChanged,
            // controller: controller,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              hintStyle: TextStyle(
                  fontSize: 14,
                  color: Color(0xff14142B),
                  fontFamily: 'Gordita',
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      //color:
                      ),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      );
}
