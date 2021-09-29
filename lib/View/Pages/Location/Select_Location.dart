import 'package:blunch/Model/location_model/user_locationApi.dart';
import 'package:blunch/Services/location_Service.dart';
import 'package:blunch/View/Pages/Home/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  final locationController = TextEditingController();
  final formKey = new GlobalKey<FormState>();
  String selectedLocation;
  final _dataService = LocationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 60),
          child: SafeArea(
            child: Form(
              key: formKey,
              child: SingleChildScrollView(
                child: Column(
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
                    // ElevatedButton(onPressed: _search, child: Text("")),
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
                          child:
                        
                              TypeAheadFormField<String>(
                            textFieldConfiguration: TextFieldConfiguration(
                                controller: locationController,
                                decoration: InputDecoration(
                                  hintText: ('Search for Location'),
                                  hintStyle: TextStyle(
                                      color: Color(0xff828282),
                                      fontSize: 14,
                                      fontFamily: 'Gordita',
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FontStyle.normal),
                                  suffixIcon: Icon(Icons.keyboard_arrow_down),
                                  border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.circular((10))),
                                )),
                            validator: (value) => value != null && value.isEmpty
                                ? "Please enter a location"
                                : null,
                            onSaved: (value) => selectedLocation = value,
                            suggestionsCallback: UserApi.getSugestion,
                            itemBuilder: (context, String suggestion) {
                              return ListTile(
                                title: Text(suggestion),
                              );
                            },
                            onSuggestionSelected: (String suggestion) =>
                                locationController.text = suggestion,
                          )),
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
                            final form = formKey.currentState;
                            if (form.validate()) {
                              form.save();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ));
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _search() async {
    final response = await _dataService.makeRequesttoAPi(location.toString());
    print(response.location[1].name);
    print(response.status);
    print(response.location[60].name);
  }
}

// class buildLocation extends StatelessWidget {
//   const buildLocation({
//     Key key,
//     @required this.locationController,
//   }) : super(key: key);

//   final TextEditingController locationController;

//   @override
//   Widget build(BuildContext context) {
// String selectedLocation;
////  String selectedLocation;
// return TypeAheadFormField<String>(
//   textFieldConfiguration: TextFieldConfiguration(
//       controller: locationController,
//       decoration: InputDecoration(
//         hintText: ('Search for Location'),
//         hintStyle: TextStyle(
//             color: Color(0xff828282),
//             fontSize: 14,
//             fontFamily: 'Gordita',
//             fontWeight: FontWeight.w500,
//             fontStyle: FontStyle.normal),
//         suffixIcon: Icon(Icons.keyboard_arrow_down),
//         border:
//             OutlineInputBorder(borderRadius: BorderRadius.circular((10))),
//       )),
//   validator: (value) =>
//       value != null && value.isEmpty ? "Please enter a location" : null,
//   onSaved: (value) => selectedLocation = value,
//   suggestionsCallback: UserApi.getSugestion,
//   itemBuilder: (context, String suggestion) {
//     return ListTile(
//       title: Text(suggestion),
//     );
//   },
//   onSuggestionSelected: (String suggestion) =>
//       locationController.text = suggestion,
// );
//}
//}

final location = [
  "UI (University of Ibadan)",
  "Agbowo",
  "Bodija",
  "Ikolaba",
  "UCH",
  // "Idi-Ape",
  // "Samonda",
  // "Sanyo",
  // "Sango",
  // "General gas - Akobo",
  // "Ikolaba",
].map<DropdownMenuItem<String>>((String value) {
  return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
  );
}).toList();
