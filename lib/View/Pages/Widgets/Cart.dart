import 'package:blunch/Provider/CartInventory.dart';
import 'package:blunch/Provider/CartProvider.dart';
import 'package:blunch/View/Pages/Widgets/cart_util.dart';
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
    final shop = Provider.of<CartProvider>(context);
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
                  itemBuilder: (context, index) => CartUtil(
                      price: shop.items.values.toList()[index].price,
                      image: shop.items.values.toList()[index].image,
                      name: shop.items.values.toList()[index].name,
                      quantity: shop.items.values.toList()[index].quantity)),
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
                        'NGN ',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: 'Gordita',
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                  // SizedBox(
                  //   height: 21,
                  // ),
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
                        Navigator.pushNamed(context, '/sign_up');
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
