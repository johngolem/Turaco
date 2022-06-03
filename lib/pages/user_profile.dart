import 'package:flutter/material.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/account_widget.dart';
import 'package:turac/widgets/appIcon.dart';
import 'package:turac/widgets/big_text.dart';

class AccountProfile extends StatelessWidget {
  const AccountProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.mainColor,
        title: BigText(
          text: "Profile",
          size: Dimensions.font20, color: Colors.white,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(top: Dimensions.height20),
          child: SingleChildScrollView(
            child: Column(
              children: [
              AppIcon(icon: Icons.person, 
              backgroundColor: AppColors.mainColor, 
                iconColor: Colors.white,
                size: Dimensions.height15*10,
                ),
              SizedBox(height: Dimensions.height30,),
              Column(
                children: [
                  AccountWidget(
                appIcon: AppIcon(icon: Icons.person,backgroundColor: AppColors.mainColor,size: Dimensions.height10*5,), 
                bigText: BigText(text: "name of the user",)
                ),
              SizedBox(height: Dimensions.height10,),
              AccountWidget(
                appIcon: AppIcon(icon: Icons.email,backgroundColor: Colors.green,size: Dimensions.height10*5,), 
                bigText: BigText(text: "email",)
                ),
              SizedBox(height: Dimensions.height20,),
              AccountWidget(
                appIcon: AppIcon(icon: Icons.location_on,backgroundColor: Colors.pink,size: Dimensions.height10*5,), 
                bigText: BigText(text: "Address of user",)
                ),
              SizedBox(height: Dimensions.height20,),
              AccountWidget(
                appIcon: AppIcon(icon: Icons.person,backgroundColor: Colors.red,size: Dimensions.height10*5,), 
                bigText: BigText(text: "Type of user",)
                ),
              SizedBox(height: Dimensions.height20,),
              AccountWidget(
                appIcon: AppIcon(icon: Icons.phone,backgroundColor: Colors.yellow,size: Dimensions.height10*5,), 
                bigText: BigText(text: "Phone number",)
                ),
              SizedBox(height: Dimensions.height20,),
              AccountWidget(
                appIcon: AppIcon(icon: Icons.add_a_photo,backgroundColor: Colors.blue,size: Dimensions.height10*5,), 
                bigText: BigText(text: "profile photo",)
                ),
              SizedBox(height: Dimensions.height20,),
                ],
              )
            ]),
          ),
        
      )
    );
  }
}
