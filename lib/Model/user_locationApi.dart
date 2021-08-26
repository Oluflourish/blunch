import 'package:blunch/Model/user_location.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class UserApi {
  static Future<List<User>> getUserSugestion(String query) async {
    final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
    // https://order-api.blunch.ng/api
    //https://jsonplaceholder.typicode.com/users

    final response = await http.get(url);
    final List users = json.decode(response.body);
    print(response.body);

    if (response.statusCode == 200) {
      return users.map((json) => User.fromJson(json)).where((user) {
        final nameLower = user.name.toLowerCase();
        final queryLower = query.toLowerCase();

        return nameLower.contains(queryLower);
      }).toList();
    } else {
      throw Exception();
    }
  }
}
