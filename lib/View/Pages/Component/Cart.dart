import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/View/Util/cart_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final shop = Provider.of<CartProvider>(context, listen: false);
    // ProductItems productItems = shop.activeitem;
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
            Expanded(
              //flex: 5,
              child: ListView.builder(
                  //physics: BouncingScrollPhysics,
                  shrinkWrap: true,
                  itemCount: shop.items.length,
                  itemBuilder: (context, index) =>
                      //cart card
                      CartUtil(
                          cart: shop.items[index],
                          price: shop.items.values.toList()[index].price,
                          image: shop.items.values.toList()[index].image,
                          name: shop.items.values.toList()[index].name,
                          //delete operation
                          productId: shop.items.keys.toList()[index].toString(),
                          quantity:
                              shop.items.values.toList()[index].quantity)),
            ),

            //Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Consumer<CartInventory>(
                        builder: (context, mycart, child) => Text(
                          "Sub-total (" +
                              // shop.itemsCount.toString()
                              '${shop.itemsCount} ' +
                              "${shop.meals}" +
                              ')',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontFamily: 'Gordita',
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Text(
                        'NGN ' + 'total',
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
                      onPressed: () {
                        Navigator.pushNamed(context, '/checkout');
                        //push(context, '/sign_up');
                      },
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
