import 'dart:convert';

import 'package:blunch/Model/Profile_model/profile_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileProvider with ChangeNotifier {
  List<ProfileMode> profile = [];

  void initialState() {
    syncDataWithProvider();
  }

  void addProfile(ProfileMode _profile) {
    profile.add(_profile);
    updateSharedPrefrence();

    notifyListeners();
  }

  void removeaddress() {}

  updateSharedPrefrence() async {
    List<String> profiledata =
        profile.map((e) => json.encode(e.toJson())).toList();
    SharedPreferences preferences = await SharedPreferences.getInstance();

    await preferences.setStringList('profile', profiledata);
  }

  Future syncDataWithProvider() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var result = pref.getStringList('profile');

    if (result != null) {
      profile =
          result.map((e) => ProfileMode.fromJson(json.decode(e))).toList();
    }
    notifyListeners();
  }
}
