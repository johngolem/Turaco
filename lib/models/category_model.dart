class Category {
  int? id;
  String? category;
  int? active;
  String? image;
  String? description;
  String? createdAt;
  String? updatedAt;

  Category(
      {this.id,
      this.category,
      this.active,
      this.image,
      this.description,
      this.createdAt,
      this.updatedAt});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['name'];
    active = json['show_on_listing'];
    image = json['image_path'];
    description = json['description'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.category;
    data['show_on_listing'] = this.active;
    data['image_path'] = this.image;
    data['description'] = this.description;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}