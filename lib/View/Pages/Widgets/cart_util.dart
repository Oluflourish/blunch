import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartUtil extends StatelessWidget {
  int id;
  String name;
  int price;
  int quantity;
  String image;

  CartUtil({
    this.id,
    @required this.name,
    @required this.price,
    @required this.quantity,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<CartInventory>(context);
    return Card(
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
                          border: Border.all(color: Color(0xff7B0304))),
                      child: IconButton(
                        color: Color(0xffFFFFFF),
                        //heroTag: "btn1",
                        // backgroundColor: Color(0xffFFFFFF),
                        onPressed: () {
                          ProductItems product = shop.activeitem;
                          shop.removeItem(product);
                        },
                        icon: Icon(
                          Icons.remove,
                          size: 17,
                          color: Color(0xff7B0304),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Consumer<CartInventory>(
                      builder: (context, mycart, child) => Text(
                        quantity.toString(),
                        //   '${mycart.totalOrder}',
                        // (mycart.activeitem.quantity *
                        //         mycart.counter)
                        //     .toString(),
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
                    child: IconButton(
                      // heroTag: "btn2",
                      color: Color(0xffFFFFFF),
                      onPressed: () {
                        ProductItems product = shop.activeitem;
                        shop.addItem(product);
                      },
                      icon: Icon(
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
                      name,
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
                      'NGN ' + price.toString(),
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
                padding: const EdgeInsets.only(left: 95.0, top: 10),
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
    );
  }
}
