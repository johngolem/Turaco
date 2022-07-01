// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turac/base/custom_loader.dart';
import 'package:turac/base/show_custom_snackbar.dart';
import 'package:turac/base/success_customsnackbar.dart';
import 'package:turac/models/vendor_model.dart';
import 'package:turac/utils/app_constants.dart';
import 'package:turac/utils/colors.dart';
import 'package:turac/utils/dimensions.dart';
import 'package:turac/widgets/app_text_field.dart';
import 'package:turac/widgets/big_text.dart';

import '../controllers/vendor_controller.dart';
import '../home/new login/login.dart';

class VendorSignUp extends StatelessWidget {
  const VendorSignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var useridController = TextEditingController();
    var vendortypeController = TextEditingController();
    var servicenameController = TextEditingController();
    var serviceemailController = TextEditingController();
    var servicephoneController = TextEditingController();
    var currentavailabilityController = TextEditingController();
    var descriptionController = TextEditingController();
    var showonlistingController = TextEditingController();

    void _vendorRegistration(Vendorcontroller vendorcontroller) {
      var vendorController = Get.find<Vendorcontroller>();

      String userid = useridController.text.trim();
      String vendortype = vendortypeController.text.trim();
      String servicename = servicenameController.text.trim();
      String serviceemail = serviceemailController.text.trim();
      String servicephone = servicephoneController.text.trim();
      String currentavailability = currentavailabilityController.text.trim();
      String description = descriptionController.text.trim();
      String showonlisting = showonlistingController.text.trim();
      

      if (vendortype.isEmpty) {
        showCustomSnackBar("Type in vendor type 1 or 2",
            title: "vendor type cannot be empty");
      } else if (serviceemail.isEmpty) {
        showCustomSnackBar("Type in your email address",
            title: "Invalid input");
      } else if (!GetUtils.isEmail(serviceemail)) {
        showCustomSnackBar("Type a valid email address",
            title: "Invalid email");
      } else if (servicename.isEmpty) {
        showCustomSnackBar("Type in your name", title: "Invalid input");
      } else if (currentavailability!=bool) {
        showCustomSnackBar("type true or false",
            title: "must be true or flase");
      } else {
        successCustomSnackBar("All went well", title: "Success");

        //vendormodelbody is the object that we will create in the signup model

        VendorModelBody vendorModelBody = VendorModelBody(
          id: 1, type: vendortype, serviceName: servicename, serviceEmail: serviceemail, servicePhone: servicephone, currentAvailability: true, description: description, showOnListing: true);

        vendorController.vendorRegistration(vendorModelBody).then((status) {
          if (status.isSuccess) {
            print("succesful registration");
          } else {
            showCustomSnackBar(status.message);
          }
        });

        print(vendorModelBody.toString());
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
          builder: (_vendorController) {
            return !_vendorController.isLoading
                ? SingleChildScrollView(
                    child: Column(children: [
                      SizedBox(
                        height: Dimensions.height10,
                      ),
                      BigText(
                        text: AppConstants.APP_NAME,
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
                        child: TextField(
                          controller: useridController,
                          decoration: InputDecoration(
                            hintText: "email",
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.blue,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Dimensions.radius20),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                  width: 1.0,
                                )),
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                          textController: vendortypeController,
                          hintText: "phone",
                          icon: Icons.phone),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: servicenameController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: serviceemailController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: servicephoneController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: currentavailabilityController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: descriptionController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      AppTextField(
                        textController: showonlistingController,
                        hintText: "Enter password",
                        icon: Icons.password_sharp,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: Dimensions.height20,
                      ),

                      // sign up button
                      GestureDetector(
                        onTap: () {
                          _vendorRegistration(_vendorController);
                        },
                        child: Container(
                          width: Dimensions.screenWidth / 2,
                          height: Dimensions.screenHeight / 13,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Dimensions.radius30),
                              color: AppColors.mainColor),
                          child: Center(
                            child: BigText(
                              text: "vendor Sign Up",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: Dimensions.height15,
                      ),
                      // login link
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Get.to(() => LoginPage());
                            },
                            child: Container(
                              margin:
                                  EdgeInsets.only(left: Dimensions.height20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      Dimensions.radius20)),
                              child: BigText(
                                text: "Already have an account? | Login",
                                color: AppColors.mainBlackColor,
                                size: Dimensions.font20,
                              ),
                            ),
                          )
                        ],
                      )
                    ]),
                  )
                : const CustomLoader();
          },
        ));
  }
}
