// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/custom_loader.dart';
import 'package:turac/controllers/auth_controller.dart';
import 'package:turac/utils/dimensions.dart';
// import 'package:turac/pages/product_page_body.dart';
import 'package:turac/widgets/big_text.dart';
import 'package:turac/widgets/paragraph_text.dart';

import '../../controllers/Item_controller.dart';




class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    bool _userLoggedIn = Get.find<Authcontroller>().userLoggedIn();
    if (_userLoggedIn) {
      Get.find<Itemcontroller>().getItemInfo();
      
    }
    // print("current height is"+MediaQuery.of(context).size.height.toString());
    return Scaffold(
      body: GetBuilder<Itemcontroller>(builder: (itemcontroller) {
        return _userLoggedIn
            ? (itemcontroller.isLoading
                ? Container(
                  margin: EdgeInsets.only(top:45, bottom: 15),
                  padding: EdgeInsets.only(left:20, right:20),
                    child: Column(children: [
                      SizedBox(height: Dimensions.height45*2,),
                      BigText(text: "This is an instance of items get method"),
                      SizedBox(height: Dimensions.height30,),
                       ParagraphText(text: "This is the type" + "  "+itemcontroller.itemModel.type.toString(),size: Dimensions.font26,),
                       
                    ],
                      
                        

                    
                        
                        ),
                        )
                : const CustomLoader())
            : Container(child: const Center(child: Text("you must first login")));
      }),
    );
  }
}
