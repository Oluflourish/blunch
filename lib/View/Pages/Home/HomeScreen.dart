import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/View/Pages/Home/Home_order_widget/Monday_Order.dart';
import 'package:blunch/View/Pages/Home/Home_order_widget/Tuesday_Order.dart';
import 'package:blunch/View/Pages/Navigation/NavigationDrawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Home_order_widget/Friday_Order.dart';
import 'Home_order_widget/Thursday_Order.dart';
import 'Home_order_widget/Wednesday_Order.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    tabController = TabController(
      length: 5,
      vsync: this,
    );
    super.initState();
  }

  TabController tabController;
  bool isActive;
  int index = 0;
  bool showCart = true;

  @override
  Widget build(BuildContext context) {
    final _scaffoldkey = GlobalKey<ScaffoldState>();
    return Consumer<CartProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: Colors.white,
        bottomSheet: value.showCart ? BottomSheetWidget() : null,
        key: _scaffoldkey,
        //App Bar Data
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Delivery_Widget(),
          centerTitle: true,
          actions: [
            IconButton(
                icon: Icon(
                  Icons.notifications_rounded,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/notification');
                })
          ],
        ),

        drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: NavigationDrawerWidget(),
        ),

        body: SingleChildScrollView(
          child: SafeArea(
            child: ListView(
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 52,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 21.0, right: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //Search Box
                          Container(
                            height: 48,
                            width: MediaQuery.of(context).size.width - 50,
                            //padding: EdgeInsets.only(left: 15.0),
                            decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff8D9091)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Color(0xff8D9091),
                              ),
                              border: InputBorder.none,
                              fillColor: Colors.white,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                            )),
                          ),
                        ])),
                SizedBox(height: 25),
                Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TabBar(
                      indicatorPadding: EdgeInsets.only(
                        bottom: 26,
                        top: 16,
                      ),
                      indicatorSize: TabBarIndicatorSize.label,
                      indicatorWeight: 10.0,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xff7B0304)),
                      controller: tabController,
                      labelColor: Colors.white,
                      unselectedLabelColor: Color(0xff8D9091),
                      isScrollable: true,
                      labelPadding: EdgeInsets.all(12),
                      tabs: [
                        // Order Day Tabs
                        Tab(
                          child: Container(
                              width: 83,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D9091)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text(
                                  "Monday",
                                  style: TextStyle(
                                      fontSize: 14,
                                      // color: Colors.white,
                                      //color: Color(0xff8D9091),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                        ),
                        Tab(
                          child: Container(
                              width: 83,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D9091)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text(
                                  "Tuesday",
                                  style: TextStyle(
                                      fontSize: 14,
                                      // color: Color(0xff8D9091),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                        ),
                        Tab(
                          child: Container(
                              width: 83,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D9091)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text(
                                  "Wednesday",
                                  style: TextStyle(
                                      fontSize: 14,
                                      // color: Color(0xff8D9091),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                        ),
                        Tab(
                          child: Container(
                              width: 83,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D9091)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text(
                                  "Thursday",
                                  style: TextStyle(
                                      fontSize: 14,
                                      //  color: Color(0xff8D9091),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                        ),
                        Tab(
                          child: Container(
                              width: 83,
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xff8D9091)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                              child: Center(
                                child: Text(
                                  "Friday",
                                  style: TextStyle(
                                      fontSize: 14,
                                      // color: Color(0xff8D9091),
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                ),
                              )),
                        ),
                      ],
                    )),
                //Order List Tab

                Container(
                  // color: Colors.blue,
                  height: MediaQuery.of(context).size.height - 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      //Order Type per day
                      OrderList(),
                      TuesdayOrder(),
                      Wednesday_Order(),
                      ThursdayOrder(),
                      FridayOrder(),
                    ],
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

//Top Delivery Location(Incomplete)
class Delivery_Widget extends StatelessWidget {
  const Delivery_Widget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Delivery to",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gordita',
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal)),
              Icon(Icons.keyboard_arrow_down),
            ],
          ),
          Text(
            'General gas - Akobo',
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Gordita',
                color: Color(0xff7B0304),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal),
          ),
        ],
      ),
    );
  }
}

//Bottom Sheet for Cart
class BottomSheetWidget extends StatefulWidget {
  @override
  _BottomSheetWidgetState createState() => _BottomSheetWidgetState();
}

class _BottomSheetWidgetState extends State<BottomSheetWidget> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xff1A1A1A),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      height: 72,
      child: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
                top: 24,
                bottom: 24,
              ),
              child: Consumer<CartProvider>(
                builder: (context, mycart, child) => Text(
                  mycart.itemsCount.toString() +
                      " ${mycart.meals}" +
                      " - NGN " +
                      '${mycart.totalAmount}',

                  // +  mycart.getTot.toString(),
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontFamily: 'Gordita',
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 48,
              width: 108,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushNamed(context, '/cart');
                },
                color: Colors.white,
                child: Text("View Cart"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
