// ignore_for_file: must_be_immutable

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
      color: Colors.white,
      padding: EdgeInsets.only(left: Dimensions.width20,
      top: Dimensions.width10,
      bottom: Dimensions.width10
      ),
      child: Row(
        children: [
        appIcon,
        SizedBox(width: Dimensions.width20,),
        bigText
      ]),
    );
  }
}
