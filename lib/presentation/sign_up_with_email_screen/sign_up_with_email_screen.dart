import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/sign_in_with_email_screen/sign_in_with_email_screen.dart';
import 'package:movia/presentation/sign_up_with_email_verification_screen/sign_up_with_email_verification_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';
import 'package:movia/widgets/spacing.dart';

class SignUpWithEmailScreen extends StatefulWidget {
  @override
  State<SignUpWithEmailScreen> createState() => _SignUpWithEmailScreenState();
}

class _SignUpWithEmailScreenState extends State<SignUpWithEmailScreen> {
  bool obscur=true;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
             Padding(
               padding: getPadding(
                top: 20,
                right: 20,
                left: 20
               ),
               child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BkBtn()
                ],
               ),
             ),
             
              Padding(
                  padding: getPadding(
                    left: 24,
                    top: 36,
                    right: 24,
                  ),
                  child: Text(
                    "Sign up",
                    overflow: TextOverflow.ellipsis,
                    textAlign:  TextAlign.start,
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
    isDark:isDark,
                  width: size.width,
                  focusNode: FocusNode(),
                  hintText: "Name",
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
                      svgPath: ImageConstant.imgUser,
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
    isDark:isDark,
                  width: size.width,
                  focusNode: FocusNode(),
                  hintText: "Email",
                  margin: getMargin(
                    left: 24,
                    top: 32,
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
    isDark:isDark,
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
                      onTap: (){
                        setState(() {
                          obscur=!obscur;
                        });
                      },
                      child: CommonImageView(
                        imagePath:obscur?ImageConstant.visibilityOff: ImageConstant.visibilityOn,
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
              
                CustomButton(isDark:isDark,
                  width: size.width,
                  text: "Sign up",
                  margin: getMargin(
                    left: 24,
                    top: 32,
                    right: 24,
                  ),
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpWithEmailVerificationScreen()),
  );
                  },
                ),
                Container(
                  margin: getMargin(
                    left: 24,
                    top: 12,
                    right: 24,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By sing up, you accept ",
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "Privacy Policy",
                          style: TextStyle(
                            color: ColorConstant.redA400,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: " & ",
                          style: TextStyle(
                            color: ColorConstant.gray600,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,
                            height: 1.50,
                          ),
                        ),
                        TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(
                            color: ColorConstant.redA400,
                            fontSize: getFontSize(
                              12,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            letterSpacing: 0.24,
                            height: 1.50,
                          ),
                        ),
                      ],
                    ),
                    textAlign:  TextAlign.start,
                  ),
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
                      HorizontalSpace(width: 10),
                      
                      
                      Text(
                        "Or select",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                   HorizontalSpace(width: 10),
                      
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
                         margin: getMargin(
                          left: 35,
                          right: 35
                        ),
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
                    top: 86,
                    right: 24,
                    bottom: 42,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "Already have an account?",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
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
                     HorizontalSpace(width: 6),
                      InkWell(
                        onTap: (){
                          Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context)
 =>SignInWithEmailScreen()),
  );
                        },
                        child: Text(
                          "Sign in",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
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
