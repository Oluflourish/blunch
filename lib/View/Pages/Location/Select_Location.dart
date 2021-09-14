import 'package:blunch/Model/location_model/user_location.dart';
import 'package:blunch/Model/location_model/user_locationApi.dart';
import 'package:blunch/View/Pages/Home/HomeScreen.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  //final listItem = ['bodija', 'mokola', 'sango', 'UI'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 60),
          child: SafeArea(
            child: ListView(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Choose your \nlocation",
                      style: TextStyle(
                          fontSize: 34,
                          fontFamily: 'Gordita',
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Please select a location for \neasier delivery",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gordita',
                          color: Color(0xff8D9091),
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    ),
                    SizedBox(
                      height: 94,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                          padding: EdgeInsets.only(left: 20, right: 20),
                          //Location Search
                          child: Text('Enter your location')
                          //DropDownFormField()
                          //  TypeAheadField<User>(
                          //   hideOnLoading: true,
                          //   hideKeyboard: true,
                          //   textFieldConfiguration: TextFieldConfiguration(
                          //       decoration: InputDecoration(
                          //     hintText: ('Search for Location'),
                          //     hintStyle: TextStyle(
                          //         color: Color(0xff828282),
                          //         fontSize: 14,
                          //         fontFamily: 'Gordita',
                          //         fontWeight: FontWeight.w500,
                          //         fontStyle: FontStyle.normal),
                          //     suffixIcon: Icon(Icons.keyboard_arrow_down),
                          //     border: OutlineInputBorder(
                          //         borderRadius: BorderRadius.circular((10))),
                          //   )),
                          //   //   hideSuggestionsOnKeyboardHide: true,
                          //   suggestionsCallback: UserApi.getUserSugestion,
                          //   itemBuilder: (context, User suggestion) {
                          //     final user = suggestion;
                          //     return ListTile(
                          //       title: Text(user.name),
                          //     );
                          //   },
                          //   onSuggestionSelected: (User suggestion) {},
                          // ),
                          ),
                    ),
                    SizedBox(
                      height: 153,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Container(
                        //alignment: Alignment.center,
                        height: 60,
                        width: double.infinity,
                        child: RaisedButton(
                          child: Text(
                            "Continue",
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
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
