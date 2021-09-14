// import 'dart:convert';
// import 'package:flutter/material.dart';

// class OrderList extends StatefulWidget {
//   @override
//   _OrderListState createState() => _OrderListState();
// }

// class _OrderListState extends State<OrderList> {
//   var quantity = 1;
//   Future<List<Widget>> createList() async {
//     List<Widget> items = <Widget>[];
//     String dataString =
//         await DefaultAssetBundle.of(context).loadString("json/foodcard.json");
//     List<dynamic> dataJson = jsonDecode(dataString);

//     dataJson.forEach((element) {
//       items.add(GestureDetector(
//         onTap: () {
//           showModalBottomSheet(
//               isScrollControlled: true,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.vertical(
//                 top: Radius.circular(20),
//               )),
//               context: context,
//               builder: (context) {
//                 return Container(
//                   padding: EdgeInsets.all(24),
//                   height: MediaQuery.of(context).size.height - 150,
//                   child: Column(
//                     // mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Expanded(
//                               child: Text(
//                             element['name'],
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 color: Color(0xff14142B),
//                                 fontFamily: 'Gordita',
//                                 fontWeight: FontWeight.w700,
//                                 fontStyle: FontStyle.normal),
//                           )),
//                           SizedBox(
//                             width: 40,
//                           ),
//                           IconButton(
//                               iconSize: 30,
//                               icon: Icon(
//                                 Icons.cancel_outlined,
//                                 color: Color(0xff14142B),
//                               ),
//                               onPressed: () {
//                                 Navigator.of(context).pop();
//                               }),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 32,
//                       ),
//                       Container(
//                         height: 200,
//                         width: MediaQuery.of(context).size.width,
//                         child: Image.asset(
//                           element['image'],
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         //crossAxisAlignment: CrossAxisAlignment,
//                         children: [
//                           Container(
//                               height: 32,
//                               width: 32,
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(color: Color(0xff7B0304))),
//                               child: FloatingActionButton(
//                                 backgroundColor: Color(0xffFFFFFF),
//                                 onPressed: () {
//                                   adjustQuality("minus");
//                                   setState(() {});
//                                 },
//                                 child: Icon(
//                                   Icons.remove,
//                                   size: 17,
//                                   color: Color(0xff7B0304),
//                                 ),
//                               )),
//                           Padding(
//                             padding: const EdgeInsets.all(14.0),
//                             //Change to widge.price
//                             child: Text(
//                               quantity.toString(),

//                               style: TextStyle(
//                                   fontSize: 16,
//                                   color: Color(0xff1A1A1A),
//                                   fontFamily: 'Gordita',
//                                   fontWeight: FontWeight.w700,
//                                   fontStyle: FontStyle.normal),
//                               //  quantity.toString(),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Container(
//                             height: 32,
//                             width: 32,
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border: Border.all(color: Color(0xff7B0304))),
//                             child: FloatingActionButton(
//                               backgroundColor: Color(0xffFFFFFF),
//                               onPressed: () {
//                                 adjustQuality("plus");
//                                 setState(() {});
//                               },
//                               child: Icon(
//                                 Icons.add,
//                                 size: 17,
//                                 color: Color(0xff7B0304),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 20
//                               //left: 24,
//                               //  right: 24,
//                               ),
//                           child: Container(
//                             //alignment: Alignment.center,
//                             height: 56,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                                 border: Border.all(color: Color(0xff7B0304)),
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: RaisedButton(
//                               child: Text(
//                                 "Cancel",
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontFamily: 'Gordita',
//                                     color: Color(0xff7B0304),
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                               color: Colors.white,
//                               textColor: Colors.white,
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                               // shape: RoundedRectangleBorder(),
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10)),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         child: Padding(
//                           padding: const EdgeInsets.only(top: 10),
//                           child: Container(
//                             height: 56,
//                             width: double.infinity,
//                             child: RaisedButton(
//                               child: Text(
//                                 "Add for NGN " +
//                                     (int.parse(element["price"]) * quantity)
//                                         .toString(),
//                                 style: TextStyle(
//                                     fontSize: 16,
//                                     fontFamily: 'Gordita',
//                                     color: Colors.white,
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                               color: Color(0xfff7B0304),
//                               textColor: Colors.white,
//                               onPressed: () {
//                                 //Navigator.pop(context);
//                               },
//                               shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10)),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               });
//         },
//         child: Padding(
//           padding: EdgeInsets.only(bottom: 20, top: 0),
//           child: Container(
//             height: 120,
//             width: 327,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.all(Radius.circular(10)),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black12,
//                   spreadRadius: 0.4,
//                   // blurRadius: 5,
//                 )
//               ],
//             ),
//             child: GestureDetector(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 24.0, top: 20, bottom: 20),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   //mainAxisSize: MainAxisSize.max,
//                   children: [
//                     Container(
//                       width: 80,
//                       height: 80,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.all(Radius.circular(5))),
//                       child: Image.asset(
//                         element["image"],
//                         width: 80,
//                         height: 80,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Container(
//                           width: 199,
//                           //height: 56,
//                           child: Text(
//                             element["name"],
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 fontFamily: 'Gordita',
//                                 color: Color(0xff1A1A1A),
//                                 fontWeight: FontWeight.w700,
//                                 fontStyle: FontStyle.normal),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(top: 8.0),
//                           child: Row(
//                             children: [
//                               Text(
//                                 "NGN ",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontFamily: 'Gordita',
//                                     color: Color(0xff4F4F4F),
//                                     fontWeight: FontWeight.w400,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                               Text(
//                                 element["price"].toString(),
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     fontFamily: 'Gordita',
//                                     color: Color(0xff4F4F4F),
//                                     fontWeight: FontWeight.w400,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ));
//     });
//     return items;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         child: FutureBuilder(
//             initialData: <Widget>[Text("")],
//             future: createList(),
//             // MenuApi.getUserMenu(context),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return Padding(
//                   padding: EdgeInsets.all(10),
//                   child: ListView(
//                     // physics: ,
//                     shrinkWrap: true,
//                     children: snapshot.data,
//                   ),
//                 );
//               } else {
//                 return Center(child: CircularProgressIndicator());
//               }
//             }),
//       ),
//     );
//   }

//   adjustQuality(pressed) {
//     switch (pressed) {
//       case 'plus':
//         setState(() {
//           quantity += 1;
//         });
//         return;
//       case 'minus':
//         setState(() {
//           if (quantity != 1) {
//             quantity -= 1;
//           }
//         });
//         return;
//     }
//   }
// }
