// // DropdownButtonFormField(
// //                         hint: Text(
// //                           "Select your location",
// //                           style: TextStyle(
// //                               fontSize: 14,
// //                               fontFamily: 'Gordita',
// //                               color: Color(0xff8D9091),
// //                               fontWeight: FontWeight.w500,
// //                               fontStyle: FontStyle.normal),
// //                         ),
// //                         dropdownColor: Colors.white,
// //                         isExpanded: true,
// //                         value: chooseValue,
// //                         onChanged: (newValue) {
// //                           setState(() {
// //                             chooseValue = newValue;
// //                           });
// //                         },
// //                         items: listItem.map((value) {
// //                           return DropdownMenuItem(
// //                             value: chooseValue,
// //                             child: Text(value));
// //                         }).toList()),

// // String chooseValue;
// // List listItem = [
// //   "Bodija",
// //   "Agbowo - UI",
// //   "General gas - Akobo",
// //   "Ikolaba",
// // ];

// //TAbBar
// TabBar(
//                     //overlayColor: Colors.black,
//                     controller: tabController,
//                     indicatorColor: Colors.transparent,
//                     labelColor: Colors.white,
//                     isScrollable: true,
//                     labelPadding: EdgeInsets.only(left: 12),
//                     physics: ScrollPhysics(),
//                     tabs: [
//                       Tab(
//                         child: Container(
//                             width: 63,
//                             height: 38,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xff8D9091)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(8)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Monday",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff8D9091),
//                                     fontFamily: 'Gordita',
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             )),
//                       ),
//                       Tab(
//                         child: Container(
//                             width: 63,
//                             height: 38,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xff8D9091)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(8)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Tuesday",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff8D9091),
//                                     fontFamily: 'Gordita',
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             )),
//                       ),
//                       Tab(
//                         child: Container(
//                             width: 83,
//                             height: 38,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xff8D9091)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(8)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Wednesday",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff8D9091),
//                                     fontFamily: 'Gordita',
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             )),
//                       ),
//                       Tab(
//                         child: Container(
//                             width: 83,
//                             height: 38,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xff8D9091)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(8)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Thursday",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff8D9091),
//                                     fontFamily: 'Gordita',
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             )),
//                       ),
//                       Tab(
//                         child: Container(
//                             width: 83,
//                             height: 38,
//                             decoration: BoxDecoration(
//                               border: Border.all(color: Color(0xff8D9091)),
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(8)),
//                             ),
//                             child: Center(
//                               child: Text(
//                                 "Friday",
//                                 style: TextStyle(
//                                     fontSize: 14,
//                                     color: Color(0xff8D9091),
//                                     fontFamily: 'Gordita',
//                                     fontWeight: FontWeight.w500,
//                                     fontStyle: FontStyle.normal),
//                               ),
//                             )),
//                       ),
//                     ],
//                   )),
//               Container(
//                 height: MediaQuery.of(context).size.height - 200,
//                 child: TabBarView(
//                   children: [],
//                 ),
//               )

// //Padding(
// //   padding: const EdgeInsets.only(right: 24.0),
// //   child: Container(
// //     padding: EdgeInsets.only(left: 20, right: 20),
// //     decoration: BoxDecoration(
// //       // border: Border.all(
// //       //color: Color(0xff000000),
// //       //border: BorderRadius.all(Radius.circular(15)),
// //       border: Border.all(color: Color(0xff8D9091)),
// //       borderRadius: BorderRadius.all(Radius.circular(15)),
// //     ),

// //     //Use customized drop down or any flutter widget and API calls
// //     child: DropdownButtonHideUnderline(
// //       child: DropdownButton(
// //           hint: Text(
// //             'Select your Location',
// //             style: TextStyle(
// //                 fontSize: 14,
// //                 fontFamily: 'Gordita',
// //                 color: Color(0xff8D9091),
// //                 fontWeight: FontWeight.w500,
// //                 fontStyle: FontStyle.normal),
// //           ),
// //           dropdownColor: Colors.white,
// //           isExpanded: true,
// //           //value: listItem,
// //           onChanged: (newValue) {
// //             setState(() {
// //               chooseValue = newValue;
// //             });
// //           },
// //           items: listItem.map((e) {
// //             return DropdownMenuItem(child: Text(e));
// //           }).toList()),
// //     ),
// //   ),

// ////////
// ///
// ///
// ///
// ///
// // Padding(
// //   padding: const EdgeInsets.only(right: 20.0),
// //   child: Container(
// //     padding: EdgeInsets.only(left: 20, right: 20),
// //     // decoration: BoxDecoration(
// //     //  // border: Border.all(color: Color(0xff8D9091)),
// //     //  // borderRadius: BorderRadius.all(Radius.circular(15)),
// //     // ),
// //     child: TypeAheadField<User>(
// //       textFieldConfiguration: TextFieldConfiguration(
// //           decoration: InputDecoration(
// //               hintText:loading ?('Search for Location'):
// //               Text(""),

// //               suffixIcon: Icon(Icons.keyboard_arrow_down),
// //               border: OutlineInputBorder())),

// //      // hideSuggestionsOnKeyboardHide: true,
// //       suggestionsCallback: UserApi.getUserSugestion,
// //       itemBuilder: (context, User suggestion) {
// //         final user = suggestion;
// //         return ListTile(
// //           title: Text(user.name),
// //         );
// //       },
// //       //  noItemsFoundBuilder: (context) => Center(child: ,),
// //       onSuggestionSelected: (User suggestion) {
// //         final user = suggestion;

// //       },
// //     ),
// //   ),
// // ),

//HomeData_widget(),

// class HomeData_widget extends StatelessWidget {
//   const HomeData_widget({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ListView(
//         children: [
//           SizedBox(
//             height: 52,
//           ),
//           Padding(
//               padding: EdgeInsets.only(left: 21.0, right: 15),
//               child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     //Search Box
//                     Container(
//                       height: 48,
//                       width: 308,
//                       //padding: EdgeInsets.only(left: 15.0),
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Color(0xff8D9091)),
//                         borderRadius: BorderRadius.all(Radius.circular(15)),
//                       ),
//                       child: TextField(
//                           decoration: InputDecoration(
//                         hintText: "Search",
//                         hintStyle: TextStyle(
//                           color: Color(0xff8D9091),
//                         ),
//                         border: InputBorder.none,
//                         fillColor: Colors.white,
//                         prefixIcon: Icon(Icons.search),
//                       )),
//                     ),
//                   ])),
//           SizedBox(),
//           Padding(
//             padding: const EdgeInsets.only(left: 10.0),
//             child: TabBar(
//               controller: tabController,
//             )

//           )],
//       ),
//     );
//   }
// }
