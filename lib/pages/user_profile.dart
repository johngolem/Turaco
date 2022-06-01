import 'package:flutter/material.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/big_text.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: BigText(
          text: "Profile",
          size: Dimensions.font20,
        ),
      ),
    );
  }
}
