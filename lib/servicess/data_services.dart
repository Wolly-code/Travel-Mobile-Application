import 'dart:convert';

import 'package:http/http.dart' as http;

class DataSerices {
  String baseUrl =
      "http://10.0.2.2:8000/places";

  void getData() async {
    var apiUrl = '/getPlaces';
    http.Response request = await http.get(Uri.parse(baseUrl + apiUrl));
    try {
      if (request.statusCode == 200) {
        List<dynamic> list = json.decode(request.body);
      }
    } catch (e) {
      print(e);
    }
  }
}
