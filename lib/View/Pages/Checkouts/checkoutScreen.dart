import 'package:flutter/material.dart';

class Checkout extends StatefulWidget {
  @override
  _CheckoutState createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Checkout',
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
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          //color: Colors.red,
          child: Padding(
            padding: EdgeInsets.only(left: 24, right: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              // shrinkWrap: true,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/danger_circle.png',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Pre-oders are delivered between 10AM & 12 noon, same day orders  are delivered between 12 noon & 3PM',
                        style: TextStyle(
                            fontSize: 14,
                            color: Color(0xff8D9091),
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: MediaQuery.of(context).size.height,
                  height: 86,
                  child: Card(
                    // height: 86,
                    // decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.all(Radius.circular(5)),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         color: Colors.black12,
                    //         // spreadRadius: 0.4,
                    //       ),
                    //     ]),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 24.0, top: 18, right: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Delivery Address',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff8D9091),
                                    fontFamily: 'Gordita',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Add',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff7B0304),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            'You have no address added yet!',
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
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 220,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 24.0, right: 24, top: 18),
                          child: Row(
                            // crossAxisAlignment: CrossAxisAlignment.end,

                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'items',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff8D9091),
                                    fontFamily: 'Gordita',
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Text(
                                  'Add More',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xff7B0304),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                      ],
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
