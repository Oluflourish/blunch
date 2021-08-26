import 'package:flutter/material.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Order',
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
                    child: Image.asset('assets/order_food.png'),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Text(
                    "You have no orders yet!",
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
                    "Browse our menu and start ordering",
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 46,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1),
                    child: Container(
                      //alignment: Alignment.center,
                      height: 60,
                      width: double.infinity,
                      child: RaisedButton(
                        child: Text(
                          "Start Ordering",
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
                          Navigator.popAndPushNamed(context, '/home');
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
