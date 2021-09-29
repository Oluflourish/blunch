import 'dart:convert';

import 'package:blunch/models/json_list.dart';
import 'package:http/http.dart' as http;

class LocationService {
  Future<LocationResponse> makeRequesttoAPi(String location) async {
    final uri = Uri.https('order-api.blunch.ng', '/api/locations');
    final response = await http.get(uri);
    print(response.body);
    final json = jsonDecode(response.body);
    return LocationResponse.fromJson(json);

    // https://order-api.blunch.ng/api/location
  }
}
