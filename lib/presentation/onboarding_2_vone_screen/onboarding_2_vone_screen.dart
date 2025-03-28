import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';


class Onboarding2VoneScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  height: getVerticalSize(
                    421.00,
                  ),
                  width: getHorizontalSize(
                    314.00,
                  ),
                  margin: getMargin(
                    left: 18,
                    top: 32,
                    right: 18,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            right: 10,
                            bottom: 10,
                          ),
                          color: ColorConstant.gray200,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(15),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              325.00,
                            ),
                            width: getHorizontalSize(
                              290.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  15.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        15.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgOnboarding2,
                                      height: getVerticalSize(
                                        325.00,
                                      ),
                                      width: getHorizontalSize(
                                        290.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: getMargin(
                            left: 10,
                            top: 10,
                          ),
                          color: ColorConstant.gray200,
                          shape: RoundedRectangleBorder(
                            borderRadius:BorderRadius.circular(10),
                          ),
                          child: Container(
                            height: getVerticalSize(
                              108.00,
                            ),
                            width: getHorizontalSize(
                              270.00,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  10.00,
                                ),
                              ),
                            ),
                            child: Stack(
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      all: 10,
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgStory,
                                      height: getVerticalSize(
                                        88.00,
                                      ),
                                      width: getHorizontalSize(
                                        250.00,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment:isRtl?Alignment.bottomRight: Alignment.bottomCenter,
                child: Container(
                  height: getVerticalSize(310),
                  width: double.infinity,
                  margin: getMargin(
                    top: 5,
                   
                  ),
                  decoration: BoxDecoration(
                    color:isDark?ColorConstant.darkContainer: ColorConstant.gray50,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          15.00,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          15.00,
                        ),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: getHorizontalSize(
                          199.00,
                        ),
                        margin: getMargin(
                          left: 25,
                          top: 26,
                          right: 25,
                        ),
                        child: Text(
                          "Get information about movies & series",
                          maxLines: null,
                          textAlign:  TextAlign.start,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 1.40,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            325.00,
                          ),
                          margin: getMargin(
                            left: 25,
                            top: 37,
                            right: 25,
                          ),
                          child: Text(
                            "We have prepared complete information about movies and series for you",
                            maxLines: null,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                16,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              height: 1.38,
                            ),
                          ),
                        ),
                      ),
                   
                 
                    ],
                  ),
                ),
              ),
           


            ],
          );
  }
}
