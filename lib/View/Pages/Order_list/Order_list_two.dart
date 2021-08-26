import 'dart:convert';
import 'package:flutter/material.dart';

class TuesDayList extends StatefulWidget {
  @override
  _TuesDayListState createState() => _TuesDayListState();
}

class _TuesDayListState extends State<TuesDayList> {
  Future<List<Widget>> createList() async {
    List<Widget> items = new List<Widget>();
    String dataString =
        await DefaultAssetBundle.of(context).loadString("json/tuesday.json");
    List<dynamic> dataJson = jsonDecode(dataString);

    dataJson.forEach((element) {
      items.add(Padding(
        padding: EdgeInsets.only(bottom: 20, top: 0),
        child: Container(
          height: 120,
          width: 327,
          decoration: BoxDecoration(
            color: Colors.white,
            //color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.4,
                // blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Image.asset(
                    element["image"],
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 199,
                      //height: 56,
                      child: Text(
                        element["name"],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gordita',
                            color: Color(0xff1A1A1A),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "NGN ",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            element["price"].toString(),
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FutureBuilder(
            initialData: <Widget>[Text("")],
            future: createList(),
            //MenuApi.getUserMenu(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    // physics: ,
                    shrinkWrap: true,
                    children: snapshot.data,
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class WednesDayList extends StatefulWidget {
  @override
  _WednesDayListState createState() => _WednesDayListState();
}

class _WednesDayListState extends State<WednesDayList> {
  Future<List<Widget>> createList() async {
    List<Widget> items = new List<Widget>();
    String dataString =
        await DefaultAssetBundle.of(context).loadString("json/wednesday.json");
    List<dynamic> dataJson = jsonDecode(dataString);

    dataJson.forEach((element) {
      items.add(Padding(
        padding: EdgeInsets.only(bottom: 20, top: 0),
        child: Container(
          height: 120,
          width: 327,
          decoration: BoxDecoration(
            color: Colors.white,
            //color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.4,
                // blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Image.asset(
                    element["image"],
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 199,
                      //height: 56,
                      child: Text(
                        element["name"],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gordita',
                            color: Color(0xff1A1A1A),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "NGN ",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            element["price"].toString(),
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FutureBuilder(
            initialData: <Widget>[Text("")],
            future: createList(),
            //MenuApi.getUserMenu(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    // physics: ,
                    shrinkWrap: true,
                    children: snapshot.data,
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class ThursDayList extends StatefulWidget {
  @override
  _ThursDayListState createState() => _ThursDayListState();
}

class _ThursDayListState extends State<ThursDayList> {
  Future<List<Widget>> createList() async {
    List<Widget> items = new List<Widget>();
    String dataString =
        await DefaultAssetBundle.of(context).loadString("json/thursday.json");
    List<dynamic> dataJson = jsonDecode(dataString);

    dataJson.forEach((element) {
      items.add(Padding(
        padding: EdgeInsets.only(bottom: 20, top: 0),
        child: Container(
          height: 120,
          width: 327,
          decoration: BoxDecoration(
            color: Colors.white,
            //color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.4,
                // blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Image.asset(
                    element["image"],
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 199,
                      //height: 56,
                      child: Text(
                        element["name"],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gordita',
                            color: Color(0xff1A1A1A),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "NGN ",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            element["price"].toString(),
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FutureBuilder(
            initialData: <Widget>[Text("")],
            future: createList(),
            //MenuApi.getUserMenu(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    // physics: ,
                    shrinkWrap: true,
                    children: snapshot.data,
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}

class FridayList extends StatefulWidget {
  @override
  _FridayListState createState() => _FridayListState();
}

class _FridayListState extends State<FridayList> {
  Future<List<Widget>> createList() async {
    List<Widget> items = new List<Widget>();
    String dataString =
        await DefaultAssetBundle.of(context).loadString("json/friday.json");
    List<dynamic> dataJson = jsonDecode(dataString);

    dataJson.forEach((element) {
      items.add(Padding(
        padding: EdgeInsets.only(bottom: 20, top: 0),
        child: Container(
          height: 120,
          width: 327,
          decoration: BoxDecoration(
            color: Colors.white,
            //color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                spreadRadius: 0.4,
                // blurRadius: 5,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Image.asset(
                    element["image"],
                    width: 80,
                    height: 80,
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 199,
                      //height: 56,
                      child: Text(
                        element["name"],
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gordita',
                            color: Color(0xff1A1A1A),
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "NGN ",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                          Text(
                            element["price"].toString(),
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'Gordita',
                                color: Color(0xff4F4F4F),
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ));
    });
    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: FutureBuilder(
            initialData: <Widget>[Text("")],
            future: createList(),
            //MenuApi.getUserMenu(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: EdgeInsets.all(10),
                  child: ListView(
                    // physics: ,
                    shrinkWrap: true,
                    children: snapshot.data,
                  ),
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}