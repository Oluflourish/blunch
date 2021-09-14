import 'package:flutter/material.dart';

class Address extends StatefulWidget {
  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Address Box',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xff1C1C1C),
              fontFamily: 'Gordita',
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 24, right: 24, top: 32),
            child: Container(
              alignment: Alignment.center,
              height: 120,
              width: 327,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    spreadRadius: 0.4,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Delivery Address",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff8D9091),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "You have no address added yet!",
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xff1A1A1A),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 31),
              child: Container(
                //alignment: Alignment.center,
                height: 60,
                width: double.infinity,
                child: RaisedButton(
                  child: Text(
                    "Add A New Address",
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
                    // Navigator.pushNamed(context, '/add_address');
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
