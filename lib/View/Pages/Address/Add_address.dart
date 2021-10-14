// import 'package:blunch/Model/Profile_model/Profile_util.dart';
// import 'package:flutter/material.dart';

// class Add_address extends StatefulWidget {
//   @override
//   _Add_addressState createState() => _Add_addressState();
// }

// class _Add_addressState extends State<Add_address> {
//   @override
//   Widget build(BuildContext context) {
//     var user = Profile_util.myUser;
//     final text = Profile_util.myUser;

//     TextEditingController controller;
//     return Scaffold(
//       // resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         iconTheme: IconThemeData(color: Colors.black),
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: Text(
//           'Address Book',
//           style: TextStyle(
//               fontSize: 14,
//               color: Color(0xff1C1C1C),
//               fontFamily: 'Gordita',
//               fontWeight: FontWeight.w500,
//               fontStyle: FontStyle.normal),
//         ),
//         centerTitle: true,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           // height: MediaQuery.of(context).size.height,
//           child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Container(
//                   color: Colors.white,
//                   // height: MediaQuery.of(context).size.height * 0.25,
//                   width: MediaQuery.of(context).size.width,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(top: 16, left: 24, right: 24),
//                         child: Container(
//                           height: MediaQuery.of(context).size.height,
//                           child: ListView(
//                             shrinkWrap: true,
//                             physics: BouncingScrollPhysics(),
//                             scrollDirection: Axis.vertical,
//                             children: [
//                               //buildText("Display name"),
//                               SizedBox(
//                                 height: 4,
//                               ),
//                               ProfileWidget(
//                                 onChanged: (display) {},
//                                 label: user.first_name,
//                                 text: user.first_name,
//                               ),
//                               SizedBox(
//                                 height: 24,
//                               ),
//                               ProfileWidget(
//                                 label: user.last_name,
//                                 //"Last Name",
//                                 // onChanged: (first_name) =>
//                                 //     user = user.copy(first_name: first_name),
//                                 text: user.last_name,
//                               ),
//                               SizedBox(
//                                 height: 24,
//                               ),
//                               ProfileWidget(
//                                   text: '+2348123456789',
//                                   // onChanged: (last_name) =>
//                                   // user = user.copy(phone: phone),
//                                   label: user.phone
//                                   //"Phone number"
//                                   ),
//                               SizedBox(
//                                 height: 24,
//                               ),
//                               ProfileWidget(
//                                   text: '24, Ibikunle avenue.',
//                                   // onChanged: (phone) =>
//                                   //     user = user.copy(phone: phone),
//                                   label: user.address),
//                               SizedBox(
//                                 height: 24,
//                               ),
//                               // Dropdown
//                               ProfileWidget(
//                                 onChanged: (email) => user.copy(email: email),
//                                 text: "Bodija",
//                               ),
//                               //label: "Bodija"),
//                               SizedBox(
//                                 height: 24,
//                               ),
//                               ProfileWidget(
//                                   // onChanged: (address) =>
//                                   //     user.copy(address: address),
//                                   text: "",
//                                   label: "Additional info"),

//                               SizedBox(
//                                 height: 25,
//                               ),
//                               Container(
//                                 alignment: Alignment.bottomCenter,
//                                 child: Container(
//                                   //alignment: Alignment.center,
//                                   height: 60,
//                                   width: double.infinity,
//                                   child: RaisedButton(
//                                     child: Text(
//                                       "Save Address",
//                                       style: TextStyle(
//                                           fontSize: 16,
//                                           fontFamily: 'Gordita',
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w500,
//                                           fontStyle: FontStyle.normal),
//                                     ),
//                                     color: Color(0xfff7B0304),
//                                     textColor: Colors.white,
//                                     onPressed: () {
//                                       Navigator.popAndPushNamed(
//                                           context, '/profile');
//                                       // Navigator.pushNamed(context, '/profile');
//                                       //  Profile_util.setUser(user);
//                                       //  setState(() {});
//                                     },
//                                     shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(10)),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ]),
//         ),
//       ),
//     );
//   }

//   Text buildText(String name) {
//     return Text(
//       name,
//       style: TextStyle(
//           fontSize: 14,
//           color: Color(0xff8D9091),
//           fontFamily: 'Gordita',
//           fontWeight: FontWeight.w400,
//           fontStyle: FontStyle.normal),
//     );
//   }

//   Text buildUserData(String name) {
//     return Text(
//       name,
//       style: TextStyle(
//           fontSize: 16,
//           color: Color(0xff1A1A1A),
//           fontFamily: 'Gordita',
//           fontWeight: FontWeight.w400,
//           fontStyle: FontStyle.normal),
//     );
//   }
// }
