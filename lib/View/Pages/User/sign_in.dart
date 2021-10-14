import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final formKey = GlobalKey<FormState>();
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(left: 24, right: 24, top: 48),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                      height: 42,
                      width: 34,
                      child: Image.asset('assets/hand.png')),
                  Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff7B0304),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Email Address",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter a Email Address";
                      } else {
                        return null;
                      }
                    },
                    autofocus: false,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Enter a password";
                      } else {
                        return null;
                      }
                    },
                    obscureText: hidePassword,
                    autofocus: false,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        child: Icon(
                          hidePassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff14142B),
                        ),
                        onTap: _togglePassword,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  InkWell(
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          color: Color(0xff7B0304),
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/forgot_password');
                    },
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.only(
                        //top: 24,
                        ),
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      //alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          "Sign In",
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
                          if (formKey.currentState.validate()) {
                            // Navigator.of(context).pop(true);
                            Navigator.pushNamed(context, '/success_page');
                          }
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 11.0, bottom: 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account? ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff8D9091),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/sign_up');
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff7B0304),
                                fontFamily: 'Gordita',
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePassword() {
    setState(() {
      hidePassword = !hidePassword;
    });
  }
}
