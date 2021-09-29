import 'dart:convert';
import 'package:blunch/Model/Profile_model/Profile_details.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profile_util {
  //final SharedPreference _preference;
  static SharedPreferences _preferences;
  static const _keyUser = 'user';
  static final myUser = User_Profile(
      display_name: "Jackson Gramham",
      last_name: "Graham",
      first_name: "Jackson ",
      email: "jackson.graham@gmail.com",
      phone: "+2348123456789",
      address: "24, Ibikunle Avenue, Bodija");

  static Future init() async =>
      _preferences = await SharedPreferences.getInstance();

  static Future setUser(User_Profile user_profile) async {
    final json = jsonEncode(user_profile.toJson());

    await _preferences.setString(_keyUser, json);
  }

  static User_Profile getUser() {
    final json = _preferences.getString(_keyUser);
    return json == null ? myUser : User_Profile.fromJson(jsonDecode(json));
  }
}
