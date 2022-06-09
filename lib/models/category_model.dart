// ignore_for_file: unused_field, unnecessary_this



class CategoryModel {
  String? _category;
  String? _image;
  String? _description;

  late List<CategoryModel> _categories;
  // List<CategoryModel> get categories => _categories;

  CategoryModel({required category, required image, required description}) {
    this._category = category;
    this._image = image;
    this._description = description;
  }

  CategoryModel.fromJson(Map<String, dynamic> json) {
    _category = json['name'];
    _image = json['image_path'];
    _description = json['description'];

     if (json['CategoryModel'] != null) {
      _categories = <CategoryModel>[];
      json['CategoryModel'].forEach((v)){
        _categories!.add(CategoryModel.fromJson((v)));
      };
    }
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();

  //   data['name'] = this._category;
  //   data['image_path'] = this._image;
  //   data['description'] = this._description;

   
  // }
}

class CategoryModel {}
