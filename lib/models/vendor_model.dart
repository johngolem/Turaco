

class VendorModelBody {
  int? id;
  String? type;
  String? serviceName;
  String? serviceEmail;
  String? servicePhone;
  bool? currentAvailability;
  String? description;
  bool? showOnListing;


  VendorModelBody(
    {
    required this.id,
    required this.type,
    required this.serviceName,
    required this.serviceEmail,
    required this.servicePhone,
    required this.currentAvailability,
    required this.description,
    required this.showOnListing,
  
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['user_id']=this.id;
    data['vendor_type']=this.type;
    data ['description']=this.description;
    data['service_name']=this. serviceName;
      data['service_email']=serviceEmail;
      data['service_phone']=servicePhone;  
      data['current_availability']=currentAvailability ;
     data['description']= description ;
       data['show_on_listing']=showOnListing;
    
    return data;
  }
}
