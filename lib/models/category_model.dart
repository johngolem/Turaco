// // // ignore_for_file: unused_field, unnecessary_this

// class Category {
//   int? id;
//   String? category;
//   int? showOnListing;
//   String? imagePath;
//   String? description;
//   String? createdAt;
//   String? updatedAt;

//  late List <CategoryModel>_Category;
//  List <CategoryModel> get Category=>_Category

//   Category({required this.id,required this.category,required this.showOnListing,required this.imagePath,required this.description,required this.createdAt, required this.updatedAt}){
//       this.id,
//       this.category,
//       this.showOnListing,
//       this.imagePath,
//       this.description,
//       this.createdAt,
//       this.updatedAt
      
//       });

//       late List <CategoryModel>_categories;

//   Category.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     category = json['name'];
//     showOnListing = json['show_on_listing'];
//     imagePath = json['image_path'];
//     description = json['description'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];

//     if (json[''] != null) {
//       _categories = <CategoryModel>[];
//       json[''].forEach((v)){
//         _categories!.add(CategoryModel.fromJson((v)));
//       }
//     }
//   }

//   // Map<String, dynamic> toJson() {
//   //   final Map<String, dynamic> data = new Map<String, dynamic>();
//   //   data['id'] = this.id;
//   //   data['name'] = this.category;
//   //   data['show_on_listing'] = this.showOnListing;
//   //   data['image_path'] = this.imagePath;
//   //   data['description'] = this.description;
//   //   data['created_at'] = this.createdAt;
//   //   data['updated_at'] = this.updatedAt;
//   //   return data;
//   // }
// }






































// // class CategoryModel {
// //   String? _category;
// //   String? _image;
// //   String? _description;

// //   late List<CategoryModel> _categories;
// //   // List<CategoryModel> get categories => _categories;

// //   CategoryModel({required category, required image, required description}) {
// //     this._category = category;
// //     this._image = image;
// //     this._description = description;
// //   }

// //   CategoryModel.fromJson(Map<String, dynamic> json) {
// //     _category = json['name'];
// //     _image = json['image_path'];
// //     _description = json['description'];

// //      if (json['CategoryModel'] != null) {
// //       _categories = <CategoryModel>[];
// //       json['CategoryModel'].forEach((v)){
// //         _categories!.add(CategoryModel.fromJson((v)));
// //       };
// //     }
// //   }

// //   // Map<String, dynamic> toJson() {
// //   //   final Map<String, dynamic> data = new Map<String, dynamic>();

// //   //   data['name'] = this._category;
// //   //   data['image_path'] = this._image;
// //   //   data['description'] = this._description;

   
// //   // }
// // }

// // class CategoryModel {}
