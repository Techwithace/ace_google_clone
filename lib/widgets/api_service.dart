import 'dart:convert';
import 'package:ace_google_clone/widgets/api_json.dart';
import 'package:ace_google_clone/widgets/keys.dart';
//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  bool isDummyData = false;

  Future<Map<String, dynamic>> fetchData({
    required String queryTerm,
    String start = "0",
  }) async {
    try {
      if (!isDummyData) {
        String q = queryTerm.contains(" ")
            ? queryTerm.split(" ").join("%20")
            : queryTerm;

        final response = await http.get(
          Uri.parse(
              "https://www.googleapis.com/customsearch/v1?key=$apiKey&cx=$contextKey&q=$q&start=$start"),
        );
        if (response.statusCode == 200) {
          final respData = jsonDecode(response.body);
          return respData;
        }
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    return apiResponse;
  }
}
