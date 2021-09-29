import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final formKey = new GlobalKey<FormState>();

    String _username, _password;

    final currentPassword = TextFormField(
      autofocus: false,
      onSaved: (value) => _username = value,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    final newPassword = TextFormField(
      autofocus: false,
      onSaved: (value) => _username = value,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.visibility_off_rounded,
          color: Color(0xff130F26),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );

    final confirm_password = TextFormField(
      autofocus: false,
      onSaved: (value) => _username = value,
      decoration: InputDecoration(
        suffixIcon: Icon(
          Icons.visibility_off_rounded,
          color: Color(0xff130F26),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );

    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Change Password',
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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Padding(
                padding: const EdgeInsets.only(top: 23.0, left: 25, right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Current Password*',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xff8D9091),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    currentPassword,
                    SizedBox(
                      height: 24,
                    ),
                    Text("New Password*",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff8D9091),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                    SizedBox(
                      height: 4,
                    ),
                    newPassword,
                    SizedBox(
                      height: 24,
                    ),
                    Text("Confim Password*",
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff8D9091),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                    SizedBox(
                      height: 4,
                    ),
                    confirm_password,
                    SizedBox(
                      height: 16,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/forgot_password');
                      },
                      child: Text(
                        'Forget Password?',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 14,
                            color: Color(0xff7B0304),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(24),
                alignment: Alignment.bottomCenter,
                child: Container(
                  //alignment: Alignment.center,
                  height: 60,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      "Change Address",
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
                      // Navigator.pop(context);
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ])));
  }
}
