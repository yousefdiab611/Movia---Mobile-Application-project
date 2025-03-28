import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class SignUpWithEmailRequestNewCodeScreen extends StatelessWidget {
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
                    top: 34,
                    right: 24,
                  ),
                  child: Text(
                    "Verification code",
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
                    261.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 15,
                    right: 24,
                  ),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Please type the verification code we sent it to ",
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
                        TextSpan(
                          text: "s.taylor@gmail.com",
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              14,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            height: 1.43,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
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
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              7.00,
                            ),
                          ),
                          border: Border.all(
                            color: ColorConstant.redA400,
                            width: getHorizontalSize(
                              1.00,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: getVerticalSize(
                                20.00,
                              ),
                              width: getHorizontalSize(
                                1.00,
                              ),
                              margin: getMargin(
                                left: 25,
                                top: 12,
                                right: 24,
                                bottom: 12,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.redA400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgNumber4,
                          height: getVerticalSize(
                            44.00,
                          ),
                          width: getHorizontalSize(
                            50.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgNumber4,
                          height: getVerticalSize(
                            44.00,
                          ),
                          width: getHorizontalSize(
                            50.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgNumber4,
                          height: getVerticalSize(
                            44.00,
                          ),
                          width: getHorizontalSize(
                            50.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgNumber4,
                          height: getVerticalSize(
                            44.00,
                          ),
                          width: getHorizontalSize(
                            50.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 24,
                    right: 24,
                  ),
                  child: Text(
                    "Request new code",
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
                CustomButton(isDark:isDark,
                  width: 327,
                  text: "\"Verify your email\"",
                  margin: getMargin(
                    left: 24,
                    top: 104,
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
