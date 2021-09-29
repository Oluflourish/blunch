import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/Provider/WednesdayList.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wednesday_Order extends StatefulWidget {
  @override
  _Wednesday_OrderState createState() => _Wednesday_OrderState();
}

class _Wednesday_OrderState extends State<Wednesday_Order> {
  @override
  Widget build(BuildContext context) {
    final wednesday = Provider.of<DayThree>(context);
    final cartItems = Provider.of<CartProvider>(context, listen: false);

    return GestureDetector(
      onTap: () {},
      child: ListView.builder(
        itemCount: wednesday.daythreeitem.length,
        //shop.daytwo.length,
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () async {
              wednesday.setActiveItem(wednesday.daythreeitem[i]);
              buildShowModalBottomSheet(context, wednesday, cartItems);
            },
            child: Padding(
              padding: EdgeInsets.only(bottom: 20, top: 0),
              child: Container(
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
                child: GestureDetector(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Image.asset(
                            wednesday.daythreeitem[i].image,
                            width: 80,
                            height: 80,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 199,
                              child: Text(
                                wednesday.daythreeitem[i].name,
                                style: TextStyle(
                                    fontSize: 20,
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
                                    (wednesday.daythreeitem[i].price
                                        .toString()),
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
              ),
            ),
          );
        },
      ),
    );
  }
}

Future buildShowModalBottomSheet(
    BuildContext context, DayThree shop, cartItems) {
  return showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      )),
      context: context,
      builder: (
        context,
      ) {
        return Container(
          padding: EdgeInsets.all(24),
          height: MediaQuery.of(context).size.height - 150,
          child: Column(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Text(
                    shop.activeitem.name,
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xff14142B),
                        fontFamily: 'Gordita',
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal),
                  )),
                  SizedBox(
                    width: 40,
                  ),
                  IconButton(
                      iconSize: 30,
                      icon: Icon(
                        Icons.cancel_outlined,
                        color: Color(0xff14142B),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      }),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  shop.activeitem.image,
                  // shop.item.elementAt(2).image,
                  //  element['image'],
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Color(0xff7B0304))),
                      child: FloatingActionButton(
                        backgroundColor: Color(0xffFFFFFF),
                        onPressed: () {
                          ProductItems product = shop.activeitem;
                          shop.removeItemFromCart(product);
                        },
                        child: Icon(
                          Icons.remove,
                          size: 17,
                          color: Color(0xff7B0304),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Consumer<DayThree>(
                      builder: (context, mycart, child) => Text(
                        //  (shop.activeitem.price * shop.counter)
                        // mycart.activeitem.toString(),
                        (mycart.activeitem.quantity * mycart.counter)
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
                        border: Border.all(color: Color(0xff7B0304))),
                    child: FloatingActionButton(
                      backgroundColor: Color(0xffFFFFFF),
                      onPressed: () {
                        ProductItems product = shop.activeitem;
                        shop.addItemToCart(product);
                      },
                      child: Icon(
                        Icons.add,
                        size: 17,
                        color: Color(0xff7B0304),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20
                      //left: 24,
                      //  right: 24,
                      ),
                  child: Container(
                    //alignment: Alignment.center,
                    height: 56,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff7B0304)),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: RaisedButton(
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gordita',
                            color: Color(0xff7B0304),
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                      color: Colors.white,
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      // shape: RoundedRectangleBorder(),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 56,
                    width: double.infinity,
                    child: RaisedButton(
                      child: Consumer<DayThree>(
                        builder: (context, mycart, child) => Text(
                          "Add for NGN " +
                              (shop.activeitem.price * shop.activeitem.quantity)
                                  .toString(),
                          style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gordita',
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      color: Color(0xfff7B0304),
                      textColor: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                        ProductItems product = shop.activeitem;
                        cartItems.addItems(product.id, product.name,
                            product.price, product.image);
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
      });
}
