import 'package:flutter/material.dart';

class ItemModel {
  int? id;
  String? type;
  int? showOnListing;
  String? imagePath;
  String? description;
  String? createdAt;
  String? updatedAt;


  ItemModel({
    required this.id,
    required this.type,
    required this.showOnListing,
    required this.imagePath,
    required this.description,
    required this.createdAt,
    required this.updatedAt,
});

factory ItemModel.fromJson(Map<String, dynamic> json){
  return ItemModel(
    id:json['id'],
    type:json['type'],
    showOnListing:json['show_on_listing'],
    imagePath:json['image_path'],
    description: json['description'],
    createdAt :json['created_at'],
    updatedAt:json['updated_at'],
  );
}
}