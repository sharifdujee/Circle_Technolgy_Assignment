import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:circletechnolgy/model/University.dart';

List<University> customerFromJson(String con) =>
    List<University>.from(json.decode(con).map((x) => University.fromJson(x)));

Future<List<University>> fetchUniversity() async {
  final response = await http.get(
      Uri.parse("http://universities.hipolabs.com/search?country=Bangladesh"));

  if (response.statusCode == 200) {
    return customerFromJson(response.body);
  } else {
    throw Exception('Failed to load customer');
  }
}
