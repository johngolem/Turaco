

class ProductModelBody {
  int? vendoId;
  int? itemCategory;
  int? itemType;
  int? availableQuantity;
  String? tags;
  bool? showOnListing;


  ProductModelBody(
    {
    required this.vendoId,
    required this.itemCategory,
    required this.itemType,
    required this.availableQuantity,
    required this.tags,
    required this.showOnListing,
  
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['vendor_id']=this.vendoId;
    data['item_category']=this.itemCategory;
    data ['item_type']=this.itemType;
    data['available_quantity']=this. availableQuantity;
    data['tags']=tags;
    data['show_on_listing']=showOnListing;
      
     
    
    return data;
  }
}
