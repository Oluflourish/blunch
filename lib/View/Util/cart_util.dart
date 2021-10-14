import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartUtil extends StatelessWidget {
  CartItems cart;
  int id;
  String name;
  String productId;
  int price;
  int quantity;
  String image;

  CartUtil({
    this.id,
    this.cart,

    //refactor this
    @required this.productId,
    @required this.name,
    @required this.price,
    @required this.quantity,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<CartInventory>(
      context,
      //listen: false
    );
    final myshop = Provider.of<CartProvider>(context);
    return Card(
      child: Container(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding:
              const EdgeInsets.only(left: 24, right: 0, top: 24, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
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

                        // backgroundColor: Color(0xffFFFFFF),
                        onPressed: () {
                          ProductItems product = shop.activeitem;
                          shop.removeItem(product);
                          // shop.addQuantity(product.id);
                          // shop.decreaseQuantity(product.id);
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
                      builder: (
                        context,
                        mycart,
                        state,
                      ) =>
                          Text(
                        // quantity.toString(),
                        //'${shop.getOrder}',
                        // mycart.getOrder(),
                        // mycart.totalOrder.toString(),
                        // mycart.activeitem.
                        cart?.quantity.toString() ?? -1,
                        // quantity.toString(),
                        // mycart.totalOrder.toString(),
                        //(mycart.activeitem.quantity * mycart.counter)
                        // ..   .toString(),
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
                  // SizedBox(
                  //   height: 40,
                  // ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xff7B0304))),
                    child: IconButton(
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
                      // '${shop.selectCartPrice}',
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
                child: InkWell(
                  onTap: () {
                    ProductItems product = shop.activeitem;
                    shop.deleteItems(productId);
                  },
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
