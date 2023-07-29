import 'package:provider_2/data/models/product_model/rating_model.dart';

class ProductModel {
  ProductModel({
    required this.title,
    required this.image,
    required this.category,
    required this.description,
    required this.id,
    required this.price,
    required this.ratingModel,
  });

  int id;
  String title;
  num price;
  String description;
  String category;
  String image;
  RatingModel ratingModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      title: json["title"] ?? "",
      image: json["image"] ?? "",
      category: json["category"] ?? "",
      description: json["description"] ?? "",
      id: json["id"]??0,
      price: json["price"]??0,
      ratingModel: RatingModel.fromJson(json["rating"]??{}),
    );
  }
}
