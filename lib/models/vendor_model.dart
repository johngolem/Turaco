import 'package:flutter/material.dart';

class VendorModel {
  int? id;
  String? type;
  String? serviceName;
  String? serviceEmail;
  String? servicePhone;
  bool? currentAvailability;
  String? description;
  int? showOnListing;


  VendorModel({
    required this.id,
    required this.type,
    required this.serviceName,
    required this.serviceEmail,
    required this.servicePhone,
    required this.currentAvailability,
    required this.description,
    required this.showOnListing,
   

  });

  factory VendorModel.fromJson(Map<String, dynamic> json) {
    return VendorModel(
      id: json['user_id'],
      type: json['vendor_type'],
      serviceName:json['service_name'],
      serviceEmail:json['service_email'],
      servicePhone:json['service_phone'],  
      currentAvailability: json['current_availability'],
      description: json['description'],
      showOnListing: json['show_on_listing'],
    
    );
  }
}
