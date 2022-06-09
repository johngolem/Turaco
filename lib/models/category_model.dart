// ignore_for_file: unused_field, unnecessary_this



class Category {
  String? _category;
  String? _image;
  String? _description;

late List <CategoryModel> _categories;
List <CategoryModel> get categories=>_categories;

  Category({ required category, required image, required description}){
     this._category = category;
     this._image=image;
     this._description=description;
  }

   Category.fromJson(Map<String, dynamic> json) {
    _category = json['name'];
    _image = json['image_path'];
    _description = json['description'];

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['name'] = this._category;
    data['image_path'] = this._image;
    data['description'] = this._description;
    return data;
  }

 
}

class CategoryModel {
}
