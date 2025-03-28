import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class SignInWithNumberScreen extends StatelessWidget {
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: getPadding(
                            left: 33,
                            top: 17,
                            bottom: 15,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgMusic,
                            height: getVerticalSize(
                              11.00,
                            ),
                            width: getHorizontalSize(
                              28.00,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 17,
                            right: 14,
                            bottom: 15,
                          ),
                          child: CommonImageView(
                            svgPath: ImageConstant.imgRightside,
                            height: getVerticalSize(
                              11.00,
                            ),
                            width: getHorizontalSize(
                              66.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 10,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgArrowleft,
                      height: getSize(
                        36.00,
                      ),
                      width: getSize(
                        36.00,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 36,
                    right: 24,
                  ),
                  child: Text(
                    "Sign in with mobile number",
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
                    "Enter your mobile number to continue",
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
                    left: 24,
                    top: 38,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              7.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 12,
                                top: 12,
                                bottom: 14,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgMenu16X24,
                                height: getVerticalSize(
                                  16.00,
                                ),
                                width: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 11,
                                right: 10,
                                bottom: 13,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCheckmark20X20,
                                height: getSize(
                                  20.00,
                                ),
                                width: getSize(
                                  20.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          left: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              7.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.gray400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 9,
                                top: 15,
                                bottom: 14,
                              ),
                              child: Text(
                                "+1",
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
                                left: 11,
                                top: 16,
                                bottom: 13,
                              ),
                              child: Text(
                                "---",
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
                                left: 10,
                                top: 16,
                                bottom: 13,
                              ),
                              child: Text(
                                "---",
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
                                left: 10,
                                top: 16,
                                bottom: 13,
                              ),
                              child: Text(
                                "--",
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
                                left: 10,
                                top: 16,
                                right: 112,
                                bottom: 13,
                              ),
                              child: Text(
                                "--",
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
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                CustomButton(isDark:isDark,
                  width: 327,
                  text: "\"Next\"",
                  margin: getMargin(
                    left: 24,
                    top: 460,
                    right: 24,
                    bottom: 20,
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
