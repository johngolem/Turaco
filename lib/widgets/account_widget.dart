// ignore_for_file: must_be_immutable, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/big_text.dart';

class AccountWidget extends StatelessWidget {
  AppIcon appIcon;
  BigText bigText;
  
  AccountWidget({Key? key, required this.appIcon, required this.bigText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.only(left: Dimensions.width20,
      top: Dimensions.width10,
      bottom: Dimensions.width10
      ),
      child: Row(
        children: [
        appIcon,
        SizedBox(width: Dimensions.width20,),
        bigText
      ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 1,
            offset: Offset(0,5),
            color: Colors.grey.withOpacity(0.2)
          ),
        ],
           ),
    );
  }
}
