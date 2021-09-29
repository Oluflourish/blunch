import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    final formKey = new GlobalKey<FormState>();

    String _username, _password;

    final resetPassword = TextFormField(
      
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

    final confirmPassword = TextFormField(
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Reset Password',
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
          child: SafeArea(
              child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                  padding:
                      const EdgeInsets.only(top: 23.0, left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Enter your reset code that was sent to your email address along with your new password',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff1A1A1A),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Reset Code',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xff8D9091),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      resetPassword,
                      SizedBox(
                        height: 24,
                      ),
                      Text("New Password",
                          style: TextStyle(
                              fontSize: 12,
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
                      Text("Confim Password",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff8D9091),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal)),
                      SizedBox(
                        height: 4,
                      ),
                      confirmPassword,
                      SizedBox(
                        height: 16,
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
                        "Reset Password",
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
              ])),
        ));
  }
}
