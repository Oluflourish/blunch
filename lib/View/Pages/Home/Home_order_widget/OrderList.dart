import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/models/cart_item.dart';
import 'package:blunch/models/item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OrderList extends StatefulWidget {
  const OrderList({Key key, @required this.day}) : super(key: key);

  final String day;
  @override
  _OrderListState createState() => _OrderListState();
}

class _OrderListState extends State<OrderList> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<CartInventory>(context);
    final cartItems = Provider.of<CartProvider>(context);

    print(widget.day);
    ProductItems product = shop.activeitem;
    shop.loadItems(widget.day);

    return Scaffold(
        key: _scaffoldkey,
        body: GestureDetector(
          onTap: () {},
          child: ListView.builder(
            itemCount: shop.item.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () async {
                  shop.setActiveItem(shop.item[i]);
                  buildShowModalBottomSheet(
                    context,
                    shop,
                    product,
                    cartItems,
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 20, top: 0),
                  child: Container(
                    // height: 120,
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
                        padding: const EdgeInsets.only(
                            left: 24.0, top: 20, bottom: 20),
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
                                shop.item[i].image,
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
                                    shop.item[i].name,
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
                                        (shop.item[i].price.toString()),
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
        ));
  }

  Future buildShowModalBottomSheet(
    BuildContext context,
    CartInventory shop,
    product,
    CartProvider cartItems,
  ) {
    return showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        )),
        context: context,
        builder: (
          context,
        ) {
          // num quantity = 1;
          return Container(
            padding: EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                        child: Text(
                      //shop.activeitem.name,
                      shop.activeitem.name,
                      // mycart.activeitem.name,
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

                    //  mycart.activeitem.image,
                    // shop.item.elementAt(2).image,
                    //  element['image'],
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Consumer<CartInventory>(
                  builder: (context, mycart, state) =>
                      //child:
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
                              // ProductItems productItems;
                              //  CartItems cartItems = mycart.activeitem;
                              //shop.removeI
                              mycart.decreaseQuantity(product.id);
                              // shop.removeItem(product);
                            },
                            child: Icon(
                              Icons.remove,
                              size: 17,
                              color: Color(0xff7B0304),
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(14.0),

                        //child: Consumer<CartInventory>(
                        //builder: (context, mycart, child) =>
                        child: Text(
                          shop.activeitem.quantity.toString(),
                          //  shop.
                          // (mycart.activeitem.quantity * mycart.counter)
                          //     .toString(),
                          //  '${mycart.totalOrder}',
                          //  mycart.totalOrder.toString(),

                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xff1A1A1A),
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      // ),
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
                            //  ProductItems productItems;
                            mycart.addQuantity(product.id);
                            // CartItems cartItems = mycart.activeitem;
                            // shop.addItem(product);
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
                        child: Consumer<CartInventory>(
                          builder: (context, mycart, child) => Text(
                            "Add for NGN " + '${shop.selectCartPrice}',
                            //  (shop.activeitem.price *
                            //     shop.activeitem.quantity)
                            //   .toString(),
                            //shop.getQuantity(product).toString(),
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
                          //shop.activeitem.quantity
                          //send quantity to cart
                          CartItems cartItem = CartItems(
                            id: product.id,
                            name: product.name,
                            price: product.price,
                            quantity: product.quantity,
                            image: product.image,
                          );

                          cartItems.addToCart(cartItem);
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

  // Widget _showCart(
  //     BuildContext context, CartInventory shop, product, cartItems) {
  //   _scaffoldkey.currentState.showBottomSheet(
  // (context) => Container(
  //   decoration: BoxDecoration(
  //       color: Color(0xff1A1A1A),
  //       borderRadius: BorderRadius.all(Radius.circular(20))),
  //   height: 72,
  //   child: Padding(
  //     padding: const EdgeInsets.only(right: 16.0),
  //     child: Row(
  //       children: [
  //         Padding(
  //           padding: const EdgeInsets.only(
  //             left: 16.0,
  //             top: 24,
  //             bottom: 24,
  //           ),
  //           child: Consumer<CartInventory>(
  //             builder: (context, mycart, child) => Text(
  //               //  (((shop.getCartQuantity(shop.activeitem))).toString()
  //               (
  //                   // cartItems.itemsCount.toString()
  //                   mycart.activeitem.quantity.toString() +
  //                       " meal" +
  //                       " - NGN "
  //               //+
  //               //   cartItems.itemsCount.toString()
  //               // (mycart.activeitem.price)
  //               //(mycart.getCartPrice(mycart.activeitem)).toString()
  //               ),
  //               style: TextStyle(
  //                   fontSize: 16,
  //                   color: Colors.white,
  //                   fontFamily: 'Gordita',
  //                   fontWeight: FontWeight.w400,
  //                   fontStyle: FontStyle.normal),
  //             ),
  //           ),
  //         ),
  //         Spacer(),
  //         Container(
  //           height: 48,
  //           width: 108,
  //           child: RaisedButton(
  //             shape: RoundedRectangleBorder(
  //                 borderRadius: BorderRadius.circular(10)),
  //             onPressed: () {
  //               Navigator.pushNamed(context, '/cart');
  //               cartItems.addItems(product.id, product.price, product.name,
  //                   product.image, product.quantity);
  //             },
  //             color: Colors.white,
  //             child: Text("View Cart"),
  //           ),
  //         )
  //       ],
  //     ),
  //   ),
  // ),
  //  );
  // }
}
