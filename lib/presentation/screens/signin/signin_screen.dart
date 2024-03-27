import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_muhammad_riski/core/extensions/image_path.dart';
import 'package:test_muhammad_riski/core/extensions/material_color.dart';
import 'package:test_muhammad_riski/core/extensions/text_style.dart';
import 'package:test_muhammad_riski/presentation/controllers/signin_controller.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({super.key});
  final controller = Get.find<SigninController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        margin: EdgeInsets.only(left: 16, right: 16),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(ImagePath.logo),
              _field(
                  obscureText: false,
                  hintText: 'Email',
                  icons: Icons.person,
                  controller: controller.emailController),
              SizedBox(height: 10),
              Obx(
                () => _field(
                    onPresse: controller.showPassword,
                    obscureText: controller.obscureText.value,
                    hintText: 'Password',
                    icons: Icons.lock,
                    controller: controller.passwordController,
                    suffixIcons: Icons.remove_red_eye_outlined),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  'Forget Password?',
                  style: MTextStyle.textStyleNormalCGreyShade600,
                ),
              ),
              SizedBox(height: 24),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          MColors.primaryColorsPrimary),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                      fixedSize: MaterialStateProperty.all(
                          Size(MediaQuery.of(context).size.width, 55))),
                  onPressed: controller.signIn,
                  child: Text(
                    'Sign In',
                    style: MTextStyle.textStyleNormalCWhite,
                  )),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    'Didn\'t have any account? Sign Up here',
                    style: MTextStyle.textStyleNormalCGreyShade600,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  _field(
      {required String hintText,
      required IconData icons,
      required TextEditingController controller,
      IconData? suffixIcons,
      required bool obscureText,
      void Function()? onPresse}) {
    return TextFormField(
        controller: controller,
        cursorColor: MColors.primaryColorsGrey.shade500,
        style: MTextStyle.textFieldStyle,
        obscureText: obscureText,
        decoration: InputDecoration(
            suffixIcon: IconButton(
                onPressed: onPresse,
                icon: Icon(
                  suffixIcons,
                  color: MColors.primaryColorsGrey.shade600,
                )),
            prefixIcon: Icon(
              icons,
              color: MColors.primaryColorsGrey.shade600,
            ),
            hintText: hintText,
            hintStyle: MTextStyle.hintTextStyle,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: MColors.primaryColorsPrimary)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:
                    BorderSide(color: MColors.primaryColorsGrey.shade600))));
  }
}
