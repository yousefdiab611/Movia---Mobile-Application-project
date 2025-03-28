import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/reset_password_screen/reset_password_screen.dart';
import 'package:movia/presentation/sign_in_welcome_screen/sign_in_welcome_screen.dart';
import 'package:movia/presentation/sign_up_with_email_screen/sign_up_with_email_screen.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/custom_radio_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';
import '../../widgets/bkbtn.dart';

class SignInWithEmailScreen extends StatefulWidget {
  @override
  State<SignInWithEmailScreen> createState() => _SignInWithEmailScreenState();
}

class _SignInWithEmailScreenState extends State<SignInWithEmailScreen> {
  bool obscur = true;
  bool checkboxVal = false;
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: getPadding(top: 20, right: 20, left: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [BkBtn()],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 36,
                    right: 24,
                  ),
                  child: Text(
                    "Sign in",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: getFontSize(
                        24,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w700,
                      height: 1.00,
                    ),
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    263.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 15,
                    right: 24,
                  ),
                  child: Text(
                    "Enter your user information below or continue with one of your social accounts",
                    maxLines: null,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorConstant.gray600,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      height: 1.43,
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: size.width,
                  focusNode: FocusNode(),
                  hintText: "Email",
                  margin: getMargin(
                    left: 24,
                    top: 38,
                    right: 24,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      all: 10,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgCheckmark,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      24.00,
                    ),
                    minHeight: getSize(
                      24.00,
                    ),
                  ),
                ),
                CustomTextFormField(
                  isDark: isDark,
                  width: size.width,
                  focusNode: FocusNode(),
                  hintText: "Password",
                  margin: getMargin(
                    left: 24,
                    top: 32,
                    right: 24,
                  ),
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: getMargin(
                      all: 10,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgLock,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    minWidth: getSize(
                      24.00,
                    ),
                    minHeight: getSize(
                      24.00,
                    ),
                  ),
                  suffix: Container(
                    margin: getMargin(
                      left: 10,
                      top: 10,
                      right: 10,
                      bottom: 10,
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          obscur = !obscur;
                        });
                      },
                      child: CommonImageView(
                        imagePath: obscur
                            ? ImageConstant.visibilityOff
                            : ImageConstant.visibilityOn,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxWidth: getHorizontalSize(
                      44.00,
                    ),
                    maxHeight: getVerticalSize(
                      44.00,
                    ),
                  ),
                  isObscureText: obscur,
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 20,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomRadioButton(
                        borderColor: ColorConstant.redA400,
                        value: checkboxVal,
                        text: 'Save sign in info',
                        onChange: (val){
                          setState(() {
                            checkboxVal=!checkboxVal;
                          });

                        },
                        fontStyle: RadioFontStyle.SFProDisplayMedium16Gray900,
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ResetPasswordScreen()),
                            );
                          },
                          child: Text(
                            "Forgot password ?",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(
                  isDark: isDark,
                  width: size.width,
                  text: "Sign in",
                  margin: getMargin(
                    left: 24,
                    top: 20,
                    right: 24,
                  ),
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignInWelcomeScreen()),
  );
                  },
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 35,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        height: getVerticalSize(
                          2.00,
                        ),
                        width: getHorizontalSize(
                          130.00,
                        ),
                        margin: getMargin(
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 10,
                        ),
                        child: Text(
                          "Or select",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Container(
                        height: getVerticalSize(
                          2.00,
                        ),
                        width: getHorizontalSize(
                          130.00,
                        ),
                        margin: getMargin(
                          left: 10,
                          top: 6,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 35,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomIconButton(
                        height: 45,
                        width: 45,
                        variant: IconButtonVariant.OutlineGray200,
                        shape: IconButtonShape.RoundedBorder22,
                        padding: IconButtonPadding.PaddingAll8,
                        child: CommonImageView(
                          imagePath: ImageConstant.facebook,
                        ),
                      ),
                      CustomIconButton(
                        height: 45,
                        width: 45,
                        margin: getMargin(left: 35, right: 35),
                        variant: IconButtonVariant.OutlineGray200,
                        shape: IconButtonShape.RoundedBorder22,
                        padding: IconButtonPadding.PaddingAll8,
                        child: CommonImageView(
                          imagePath: ImageConstant.google,
                        ),
                      ),
                      CustomIconButton(
                        height: 45,
                        width: 45,
                        variant: IconButtonVariant.OutlineGray200,
                        shape: IconButtonShape.RoundedBorder22,
                        padding: IconButtonPadding.PaddingAll8,
                        child: CommonImageView(
                          imagePath: ImageConstant.apple,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 158,
                    right: 24,
                    bottom: 44,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          bottom: 2,
                        ),
                        child: Text(
                          "Don’t have an account?",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SignUpWithEmailScreen()),
                            );
                          },
                          child: Text(
                            " Sign up",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.redA400,
                              fontSize: getFontSize(
                                14,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.00,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
