import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/reset_password_email_screen/reset_password_email_screen.dart';
import 'package:movia/presentation/reset_password_mobile_number_screen/reset_password_mobile_number_screen.dart';
import 'package:movia/widgets/bkbtn.dart';

import '../../widgets/spacing.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  bool phone=true;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( child: Column(
          mainAxisSize: MainAxisSize.min,
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
                    mainAxisAlignment: MainAxisAlignment.start,
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
                    255.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 14,
                    right: 24,
                  ),
                  child: Text(
                    "Select one of the following methods to reset your password",
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
         VerticalSpace(height: 32),
        InkWell(
          onTap: () {
                setState(() {
                  phone = true;
                });
                  Future.delayed(Duration(milliseconds: 400), () {
                             Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ResetPasswordMobileNumberScreen()),
  );
                            });
          },
          child: Container(
                padding: getPadding(all: 10),
                margin: getMargin(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: phone ? ColorConstant.redA400 : Colors.transparent,
                    border: Border.all(
                      color: phone
                          ? ColorConstant.redA400
                          : isDark
                              ? ColorConstant.gray500
                              : ColorConstant.gray600,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstant.phone,
                      color:
                          phone ? ColorConstant.whiteA700 : ColorConstant.gray500,
                      height: getVerticalSize(34),
                      width: getHorizontalSize(34),
                    ),
                    HorizontalSpace(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mobile Number',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                color: phone
                                    ? Colors.white
                                    : isDark
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          Text(
                            'You can sign up/sign in with your mobile number',
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                color: phone
                                    ? Colors.white
                                    : isDark
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: phone
                          ? Colors.white
                          : isDark
                              ? ColorConstant.gray500
                              : ColorConstant.gray600,
                    )
                  ],
                ),
          ),
        ),
        VerticalSpace(height: 17),
        InkWell(
          onTap: () {
                setState(() {
                  phone = false;
                });
                 Future.delayed(Duration(milliseconds: 400), () {
                             Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ResetPasswordEmailScreen()),
  );
                            });
          },
          child: Container(
                padding: getPadding(all: 10),
                margin: getMargin(left: 20, right: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: !phone ? ColorConstant.redA400 : Colors.transparent,
                    border: Border.all(
                      color: !phone
                          ? ColorConstant.redA400
                          : isDark
                              ? ColorConstant.gray500
                              : ColorConstant.gray600,
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      ImageConstant.mail,
                      color:
                          !phone ? ColorConstant.whiteA700 : ColorConstant.gray500,
                      height: getVerticalSize(34),
                      width: getHorizontalSize(34),
                    ),
                    HorizontalSpace(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                color: !phone
                                    ? Colors.white
                                    : isDark
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          Text(
                            'You can sign up/sign in with your mobile number',
                            maxLines: 2,
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                color: !phone
                                    ? Colors.white
                                    : isDark
                                        ? Colors.white
                                        : Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 13),
                          )
                        ],
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                      color: !phone
                          ? Colors.white
                          : isDark
                              ? ColorConstant.gray500
                              : ColorConstant.gray600,
                    )
                  ],
                ),
          ),
        ),
        VerticalSpace(height: 20),
              ],
            ),
     
          
            Padding(
              padding: getPadding(
                left: 24,
              
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
                      "Or contact",
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
                  Padding(
                    padding: getPadding(
                      left: 6,
                      top: 1,
                    ),
                    child: Text(
                      "support@movia.com",
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
    );
  }
}
