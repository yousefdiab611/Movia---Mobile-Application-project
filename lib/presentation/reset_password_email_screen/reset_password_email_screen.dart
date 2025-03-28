import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';

import '../reset_password_verification_screen/reset_password_verification_screen.dart';

class ResetPasswordEmailScreen extends StatelessWidget {
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
                      children: [
                      BkBtn(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 34,
                      right: 24,
                    ),
                    child: Text(
                      "Reset Password",
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
                      235.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: Text(
                      "Enter your email address to send you the verification code",
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
                    hintText: "s.taylor@gmail.com",
                    margin: getMargin(
                      left: 24,
                      top: 42,
                      right: 24,
                    ),
                    textInputAction: TextInputAction.done,
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
                ],
              ),
              
              CustomButton(isDark:isDark,
                width: size.width,
                text: "Send Code",
                 onTap: (){
              Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ResetPasswordVerificationScreen()),
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
