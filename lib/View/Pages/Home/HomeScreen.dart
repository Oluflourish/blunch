import 'package:blunch/Model/Order_list.dart';
import 'package:blunch/Model/Order_list/Order_list_two.dart';
import 'package:blunch/View/Pages/Navigation/NavigationDrawer.dart';
import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Delivery_widget(),
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
        drawer: NavigationDrawerWidget(),
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
                            width: 300,
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
                Container(
                  //color: Color(0xffE5E5E5),
                  height: MediaQuery.of(context).size.height - 300,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      OrderList(),
                      TuesDayList(),
                      WednesDayList(),
                      ThursDayList(),
                      FridayList(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}

class Delivery_widget extends StatelessWidget {
  const Delivery_widget({
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
