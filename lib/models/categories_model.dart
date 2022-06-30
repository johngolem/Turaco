import 'package:flutter/material.dart';

class CategoryModel {
  int? id;
  String? category;
  int? showOnListing;
  String? imagePath;
  String? description;
  String? createdAt;
  String? updatedAt;


  CategoryModel({
    required this.id,
    required this.category,
    required this.showOnListing,
    required this.imagePath,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
});

factory CategoryModel.fromJson(Map<String, dynamic> json){
  return CategoryModel(
    id:json['id'],
    category:json['name'],
    showOnListing:json['show_on_listing'],
    imagePath:json['image_path'],
    description: json['description'],
    createdAt :json['created_at'],
    updatedAt:json['updated_at'],
  );
}
}