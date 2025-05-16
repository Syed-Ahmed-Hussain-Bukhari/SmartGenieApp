import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_smart_genie/Utils/Utils.dart';
import 'package:my_smart_genie/Utils/constants.dart';
import 'package:my_smart_genie/View/AuthenticationView.dart/LoginView.dart';
import 'package:my_smart_genie/View/AuthenticationView.dart/phoneRegistration.dart';
import 'package:my_smart_genie/controller/GoogleAuthenticationController.dart';
import 'package:my_smart_genie/controller/passwordController.dart';
import 'package:my_smart_genie/controller/signUpViewController.dart';

class SignUpView extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final _signUpController = Get.put(signUpController());
  final PasswordController myPasswordController = Get.put(PasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: myBackButton(context),
                    ),
                  ],
                ),

                constant.mySizedBox(context, 0, 0.04),
                myText(context, "Sign Up", MyColors.userTextColor, 28, 0.08, 0),
                myText(context, "Full name", MyColors.userTextColor, 18, 0.09, 0.035),
                myTextField(
                  context,
                  0.8,
                  70,
                  0.09,
                  0.01,
                  MyColors.mainColor,
                  MyColors.userTextColor,
                  "Your Full Name..",
                  nameController,
                  false,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Name cannot be empty';
                    }
                    return null;
                  },
                ),
                myText(context, "E-mail", MyColors.userTextColor, 18, 0.09, 0.035),
                myTextField(
                  context,
                  0.8,
                  70,
                  0.09,
                  0.01,
                  MyColors.mainColor,
                  MyColors.userTextColor,
                  "Your Email or phone",
                  emailController,
                  false,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Email cannot be empty';
                    }
                    return null;
                  },
                ),
                myText(context, "Password", MyColors.userTextColor, 18, 0.09, 0.035),

                // Password Field with validation
                Obx(
                  () => Container(
                    width: MediaQuery.sizeOf(context).width * 0.8,
                    height: 70,
                    margin: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width * 0.09,
                      top: MediaQuery.sizeOf(context).height * 0.01,
                    ),
                    child: TextFormField(
                      controller: passwordController,
                      obscureText: myPasswordController.isPasswordHidden.value,
                      cursorColor: MyColors.mainColor,
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Password cannot be empty';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(
                            myPasswordController.isPasswordHidden.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: MyColors.userTextColor,
                          ),
                          onPressed: myPasswordController.togglePasswordVisibility,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: MyColors.userTextColor, width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: MyColors.mainColor, width: 2.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: MyColors.userTextColor, width: 2.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide(color: MyColors.mainColor, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),

                Center(
                  child: InkWell(
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        _signUpController.signUpUser(
                          context,
                          emailController.text.trim(),
                          passwordController.text.trim(),
                        );
                      }
                    },
                    child: mycustomeButton(
                      context,
                      250,
                      64,
                      25,
                      "SIGN UP",
                      MyColors.whiteColor,
                      19,
                      MyColors.mainColor,
                      0.06,
                      0.03,
                      0.06,
                      0,
                      0,
                      0,
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    myText(context, "Already have an account?", MyColors.userTextColor, 16, 0.04, 0.035),
                    InkWell(
                      onTap: () {
                        Get.to(LoginView());
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(
                          left: MediaQuery.sizeOf(context).width * 0.02,
                          top: MediaQuery.sizeOf(context).height * 0.035,
                        ),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: MyColors.mainColor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                constant.mySizedBox(context, 0, 0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: MyColors.userTextColor,
                      width: 80,
                      height: 1.5,
                    ),
                    myText(context, "Sign up with", MyColors.userTextColor, 17, 0.01, 0),
                    Container(
                      margin: const EdgeInsets.only(left: 6, top: 0),
                      color: MyColors.userTextColor,
                      width: 80,
                      height: 1.5,
                    ),
                  ],
                ),

                constant.mySizedBox(context, 0, 0.03),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(PhoneRegistration());
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: MyColors.whiteColor,
                        child: Image.network(
                          "https://th.bing.com/th/id/OIP.MGndC4De5v5LZb2CXYIGxAHaHa?w=600&h=600&rs=1&pid=ImgDetMain",
                        ),
                      ),
                    ),
                    constant.mySizedBox(context, 0.05, 0),
                    InkWell(
                      onTap: () {
                        GoogleAuthController.instance.signInWithGoogle();
                      },
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: MyColors.userTextbgColor,
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Image.asset("assets/images/google_Icon.png", width: 80),
                        ),
                      ),
                    ),
                    constant.mySizedBox(context, 0.05, 0),
                    InkWell(
                      onTap: () {
                        // FacebookAuthenticationController.instance.signInWithFacebook();
                      },
                      child: CircleAvatar(
                        radius: 20,
                        backgroundColor: MyColors.whiteColor,
                        child: Image.asset("assets/images/facebook_Icon.png", width: 120),
                      ),
                    ),
                  ],
                ),

                constant.mySizedBox(context, 0, 0.04),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
