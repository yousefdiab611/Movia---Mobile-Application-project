import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/reset_password_password_changed_screen/reset_password_password_changed_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';

import '../../widgets/custom_text_form_field.dart';

class ResetPasswordChooseANewPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordChooseANewPasswordScreen> createState() => _ResetPasswordChooseANewPasswordScreenState();
}

class _ResetPasswordChooseANewPasswordScreenState extends State<ResetPasswordChooseANewPasswordScreen> {
  
  bool obscur=true;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 20,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      BkBtn(),
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
                      "Choose a new password ",
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 14,
                      right: 24,
                    ),
                    child: Text(
                      "Enter a new password in the field below",
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
                            imagePath:obscur?ImageConstant.visibilityOn: ImageConstant.visibilityOff,
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
                ],
              ),
              
             
            
              CustomButton(isDark:isDark,
                width: size.width,
                text: "Reset Password",
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ResetPasswordPasswordChangedScreen()),
  );
                },
                margin: getMargin(
                  left: 24,
                 
                  right: 24,
                  bottom: 20,
                ),
              ),
         
         
            ],
          ),
        ),
      ),
    );
  }
}
