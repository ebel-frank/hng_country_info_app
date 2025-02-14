import 'dart:convert';

import 'package:http/http.dart' as http;

class ApiProvider {
  // Future<http.Response> get(String url) async {
  //   return http.get(url);
  // }

  Future<List> getCountries() async {
    final response = await http.get(Uri.parse('https://restcountries.com/v3.1/all'));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw "Failed to fetch countries data";
    }
  }
}