import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var shop = Provider.of<CartInventory>(context);
    ProductItems productItems = shop.activeitem;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'Cart',
            style: TextStyle(
                fontSize: 14,
                color: Color(0xff1C1C1C),
                fontFamily: 'Gordita',
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
          ),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  child: Card(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                            color: Color(0xff7B0304))),
                                    child: FloatingActionButton(
                                      heroTag: "btn1",
                                      backgroundColor: Color(0xffFFFFFF),
                                      onPressed: () {
                                        ProductItems product = shop.activeitem;
                                        shop.removeItem(product);
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 17,
                                        color: Color(0xff7B0304),
                                      ),
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Consumer<CartInventory>(
                                    builder: (context, mycart, child) => Text(
                                      (mycart.activeitem.quantity *
                                              mycart.counter)
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xff1A1A1A),
                                          fontFamily: 'Gordita',
                                          fontWeight: FontWeight.w700,
                                          fontStyle: FontStyle.normal),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border:
                                          Border.all(color: Color(0xff7B0304))),
                                  child: FloatingActionButton(
                                    heroTag: "btn2",
                                    backgroundColor: Color(0xffFFFFFF),
                                    onPressed: () {
                                      ProductItems product = shop.activeitem;
                                      shop.addItem(product);
                                    },
                                    child: Icon(
                                      Icons.add,
                                      size: 17,
                                      color: Color(0xff7B0304),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Chicken Stir Fry Noodles',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Gordita',
                                        color: Color(0xff1A1A1A),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'NGN  ' +
                                        (shop.getCartPrice(shop.activeitem))
                                            .toString(),
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Gordita',
                                        color: Color(0xff1A1A1A),
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.normal),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 95.0, top: 10),
                              child: Text(
                                "Remove",
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    fontSize: 12,
                                    fontFamily: 'Gordita',
                                    color: Color(0xffCC2364),
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),

            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sub-total( 1 Meal)",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                      Text(
                        'NGN ' +
                            (shop.getCartPrice(shop.activeitem)).toString(),
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 21,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gordita',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                      color: Color(0xfff7B0304),
                      textColor: Colors.white,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ],
              ),
            ),
            // )
          ]),
        ));
  }
}
