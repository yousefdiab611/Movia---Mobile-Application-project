import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/home.dart';
import 'package:movia/widgets/custom_button.dart';

class SignUpWithEmailSuccessfullyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea(
           child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        InkWell(
onTap: (){
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
},
                          child: CommonImageView(
                            svgPath: ImageConstant.imgClose,
                            height: getSize(
                              36.00,
                            ),
                            width: getSize(
                              36.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                 
              Column(
                children: [
                 
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: getVerticalSize(
                        139.00,
                      ),
                      width: getHorizontalSize(
                        136.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        
                        right: 24,
                      ),
                      child: Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: getPadding(
                                top: 10,
                                right: 10,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgBg,
                                height: getVerticalSize(
                                  120.00,
                                ),
                                width: getHorizontalSize(
                                  100.00,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              height: getSize(
                                114.00,
                              ),
                              width: getSize(
                                114.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                bottom: 10,
                              ),
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        top: 10,
                                        right: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgSignal72X73,
                                        height: getVerticalSize(
                                          72.00,
                                        ),
                                        width: getHorizontalSize(
                                          73.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 4,
                                        right: 5,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgMap,
                                        height: getVerticalSize(
                                          84.00,
                                        ),
                                        width: getHorizontalSize(
                                          71.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: getHorizontalSize(
                                        31.00,
                                      ),
                                      margin: getMargin(
                                        left: 16,
                                        right: 16,
                                        bottom: 10,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            1.00,
                                          ),
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                              padding: getPadding(
                                                right: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant.imgTop,
                                                height: getSize(
                                                  29.00,
                                                ),
                                                width: getSize(
                                                  29.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 10,
                                              top: 33,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgBottom,
                                              height: getSize(
                                                19.00,
                                              ),
                                              width: getSize(
                                                19.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 10,
                                        top: 1,
                                        bottom: 10,
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgReply,
                                        height: getVerticalSize(
                                          69.00,
                                        ),
                                        width: getHorizontalSize(
                                          67.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: getPadding(
                        left: 24,
                        top: 36,
                        right: 24,
                      ),
                      child: Text(
                        "Congratulations",
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
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: getHorizontalSize(
                        243.00,
                      ),
                      margin: getMargin(
                        left: 24,
                        top: 15,
                        right: 24,
                      ),
                      child: Text(
                        "Your email has been verified. You can now enjoy of Movia",
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
                  ),
                ],
              ),
             
             
              CustomButton(isDark:isDark,
                width: size.width,
                text: "Enter to Movia",
                margin: getMargin(
                  left: 24,
                 
                  right: 24,
                  bottom: 20,
                ),
              onTap: (){
  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
},
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
