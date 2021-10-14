import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, right: 24, top: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Text(
                    "Please enter the email associated with your account to get an email with instructions to reset your password",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1A1A1A),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.normal),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Text(
                  'Email Address',
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
                TextFormField(
                  autofocus: false,
                  keyboardType: TextInputType.emailAddress,
                  validator: (value) {
                      if (value.isEmpty) {
                        return "Enter a Email Address";
                      } else {
                        return null;
                      }
                    },

                  //onSaved: (value) =>  = value,
                  decoration: InputDecoration(
                    hintText: "jackson.graham@gmail.com",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(
                  height: 56,
                ),
                Container(
                  //  padding: EdgeInsets.all(24),
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    //alignment: Alignment.center,
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Send Instructions",
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
                        Navigator.pushNamed(context, '/reset_password');
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
