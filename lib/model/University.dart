import 'dart:convert';

List<University> welcomeFromJson(String str) => List<University>.from(json.decode(str).map((x) => University.fromJson(x)));

String welcomeToJson(List<University> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class University {
  String universityname;
  String country;
  List<String> webpage;

  University({
    required this.universityname,
    required this.country,
    required this.webpage,
  });

  factory University.fromJson(Map<String, dynamic> json) => University(
    universityname: json["name"],
    country: json["country"]!,
    webpage: List<String>.from(json["web_pages"].map((x) => x)),

  );

  Map<String, dynamic> toJson() => {
    "name": universityname,
    "country": country,
    "web_pages": List<String>.from(webpage.map((x) => x)),
  };
}