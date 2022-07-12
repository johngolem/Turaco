// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/custom_loader.dart';
import 'package:turac/base/show_custom_snackbar.dart';
import 'package:turac/base/success_customsnackbar.dart';
import 'package:turac/models/product_item_model.dart';
import 'package:turac/utils/app_constants.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';
import '../controllers/product_item_controller.dart';
import '../controllers/vendor_controller.dart';

class ProductSignUp extends StatelessWidget {
  const ProductSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool _userLoggedIn = Get.find<Authcontroller>().userLoggedIn();
    var vendoIdController = TextEditingController();
    var itemCategoryController = TextEditingController();
    var itemTypeController = TextEditingController();
    var availableQuantityController = TextEditingController();
    var tagsController = TextEditingController();
    var showonlistingController = TextEditingController();

    void _productRegistration(Vendorcontroller vendorcontroller) {
      var productController = Get.find<ProductItemcontroller>();

      String vendoid = vendoIdController.text.trim();
      String itemcategory = itemCategoryController.text.trim();
      String itemtype = itemTypeController.text.trim();
      String availablequantity = availableQuantityController.text.trim();
      String tags = tagsController.text.trim();
      String showonlisting = showonlistingController.text.trim();

      if (vendoid.isEmpty) {
        showCustomSnackBar("Type in vendor type 1 or 2",
            title: "vendor type cannot be empty");
      } else if (itemcategory.isEmpty) {
        showCustomSnackBar("Type in your email address",
            title: "Invalid input");
      } else if (availablequantity.isEmpty) {
        showCustomSnackBar("Type in your name", title: "Invalid input");
      } else {
        successCustomSnackBar("All went well", title: "Success");

        //vendormodelbody is the object that we will create in the signup model

        ProductModelBody productModel = ProductModelBody(
            // vendoId: int.parse(vendoid),
            vendoId:1,
            // itemCategory: int.parse(itemcategory),
            itemCategory: 1,
            // itemType: int.parse(itemtype),
            itemType: 1,
            // availableQuantity: int.parse(availablequantity),
            availableQuantity: 54,
            tags: "best of the best",
            showOnListing: true);

        productController.productRegistration(productModel).then((status) {
          if (status.isSuccess) {
            print("succesful product registration");
          } else {
            print("failed to register");
            // print(productModel.toString());
            showCustomSnackBar(status.message);
          }
        });
      }
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(Dimensions.screenHeight * 0.05),
          child: AppBar(
            backgroundColor: AppColors.mainColor,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios_new_sharp,
                  size: 20,
                  color: Colors.black,
                )),
          ),
        ),
        body: GetBuilder<Vendorcontroller>(
          builder: (_productController) {
            return !_productController.isLoading
                ? SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: AppConstants.APP_NAME +
                            " " +
                            " New Product Details",
                        color: AppColors.mainColor,
                        size: Dimensions.font26,
                      ),
                      SizedBox(height: Dimensions.height10),
                      Container(
                        height: Dimensions.screenHeight * 0.20,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 100,
                            backgroundImage:
                                AssetImage("assets/image/logo.png"),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            left: Dimensions.height20,
                            right: Dimensions.height20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(Dimensions.radius20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 7,
                                  offset: Offset(1, 10),
                                  color: Colors.grey.withOpacity(0.2))
                            ]),
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                          textController: vendoIdController,
                          hintText: "vendor id",
                          icon: Icons.numbers),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: itemTypeController,
                        hintText: "Item Type",
                        icon: Icons.arrow_drop_down,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: availableQuantityController,
                        hintText: "Available quantity",
                        icon: Icons.input,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: tagsController,
                        hintText: "tag",
                        icon: Icons.arrow_drop_down,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      // to be switched to be a button, on for true, off for false
                      AppTextField(
                        textController: itemCategoryController,
                        hintText: "Item Category?",
                        icon: Icons.arrow_drop_down,
                      ),
                      SizedBox(
                        height: Dimensions.height25,
                      ),

                      // sign up button
                      GestureDetector(
                        onTap: () {
                          // print(object);
                          _productRegistration(_productController);
                        },
                        child: Container(
                          width: Dimensions.screenWidth / 2,
                          height: Dimensions.screenHeight / 15,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                              color: AppColors.mainColor),
                          child: Center(
                            child: BigText(
                              text: "Post Item",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      // login link
                      // Row(
                      //   children: [
                      //     GestureDetector(
                      //       onTap: () {
                      //         Get.to(() => LoginPage());
                      //       },
                      //       child: Container(
                      //         margin:
                      //             EdgeInsets.only(left: Dimensions.height20),
                      //         decoration: BoxDecoration(
                      //             borderRadius: BorderRadius.circular(
                      //                 Dimensions.radius20)),
                      //         child: BigText(
                      //           text: "Already have an account? | Login",
                      //           color: AppColors.mainBlackColor,
                      //           size: Dimensions.font20,
                      //         ),
                      //       ),
                      //     )
                      //   ],
                      // )
                    ]),
                  )
                : const CustomLoader();
          },
        ));
  }
}
