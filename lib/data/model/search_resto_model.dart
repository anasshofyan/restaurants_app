import 'package:meta/meta.dart';
import 'dart:convert';

SearchRestoRes searchRestoResFromJson(String str) => SearchRestoRes.fromJson(json.decode(str));

String searchRestoResToJson(SearchRestoRes data) => json.encode(data.toJson());

class SearchRestoRes {
    SearchRestoRes({
        required this.error,
        required this.founded,
        required this.restaurants,
    });

    final bool error;
    final int founded;
    final List<Restaurant> restaurants;

    factory SearchRestoRes.fromJson(Map<String, dynamic> json) => SearchRestoRes(
        error: json["error"],
        founded: json["founded"],
        restaurants: List<Restaurant>.from(json["restaurants"].map((x) => Restaurant.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "error": error,
        "founded": founded,
        "restaurants": List<dynamic>.from(restaurants.map((x) => x.toJson())),
    };
}

class Restaurant {
    Restaurant({
        required this.id,
        required this.name,
        required this.description,
        required this.pictureId,
        required this.city,
        required this.rating,
    });

    final String id;
    final String name;
    final String description;
    final String pictureId;
    final String city;
    final int rating;

    factory Restaurant.fromJson(Map<String, dynamic> json) => Restaurant(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        pictureId: json["pictureId"],
        city: json["city"],
        rating: json["rating"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "pictureId": pictureId,
        "city": city,
        "rating": rating,
    };
}
