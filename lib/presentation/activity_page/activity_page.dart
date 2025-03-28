import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/spacing.dart';

// ignore_for_file: must_be_immutable
class ActivityPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;

    return  Scaffold(
        
        body:SafeArea( child: Container(
        
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              VerticalSpace(height: 20)
,             Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(left: 20,
                            right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BkBtn(),
                                Text(
                                  "Activity",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign:  TextAlign.start,
                                  style: TextStyle(
                                    
                                    fontSize: getFontSize(
                                      20,
                                    ),
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w700,
                                    height: 1.00,
                                  ),
                                ),
                            HorizontalSpace(width: 36),
                            
                              ],
                            ),
                          ),
                        ),
         
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                   
                      right: 24,
                      bottom: 28,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                       
                        Padding(
                          padding: getPadding(
                            top: 24,
                           
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Today",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 12,
                            ),
                            padding: getPadding(left: 10,
                            right: 10),
                            decoration: BoxDecoration(
                              color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          17.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        imagePath: ImageConstant.imgUseravatar,
                                        height: getSize(
                                          34.00,
                                        ),
                                        width: getSize(
                                          34.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                              HorizontalSpace(width: 15),
                                    Padding(
                                      padding: getPadding(
                                       
                                       
                                        top: 12,
                                        bottom: 8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Mary Smith",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              145.00,
                                            ),
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "started following you.",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant.gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'SF Pro Display',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 2,
                                                  ),
                                                  child: Text(
                                                    "4m",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant.gray600,
                                                      fontSize: getFontSize(
                                                        13,
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
                                  ],
                                ),
                            
                                CustomButton(
                                  isDark: isDark,
                                  width: 70,
                                  text: "Follow",
                                  margin: getMargin(
                                  
                                    top: 15,
                                    bottom: 15,
                                  ),
                                  padding: ButtonPadding.PaddingAll7,
                                  fontStyle:
                                      ButtonFontStyle.SFProDisplayRegular13,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                            padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                   
                                    top: 11,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            17.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          isRtl: isRtl,
                                          imagePath: ImageConstant
                                              .imgUseravatar34X34,
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      HorizontalSpace(width: 10),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Patricia Johnson",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              124.00,
                                            ),
                                            margin: getMargin(
                                              top: 11,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "liked your review.",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "18h",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                   
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                     isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright24X24,
                                    height: getSize(
                                      22.00,
                                    ),
                                    width: getSize(
                                      22.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                          
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "This week",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 14,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(top:8,bottom: 8),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            17.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath: ImageConstant.imgImg1,
                                          height: getSize(
                                            34.00,
                                          ),
                                          width: getSize(
                                            34.00,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      HorizontalSpace(width: 13),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 2,
                                              right: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "Emma Watson",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 5,
                                                  ),
                                                  child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgCheckmark16X16,
                                                    height: getSize(
                                                      16.00,
                                                    ),
                                                    width: getSize(
                                                      16.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              153.00,
                                            ),
                                            margin: getMargin(
                                              top: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  "has acted in new movie.",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                                Text(
                                                  "1d",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                CommonImageView(
                                  isRtl: isRtl,
                                  svgPath: ImageConstant.imgArrowright24X24,
                                  height: getSize(
                                    22.00,
                                  ),
                                  width: getSize(
                                    22.00,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    
                                    top: 11,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(
                                          top: 1,
                                          bottom: 5,
                                        ),
                                        variant: IconButtonVariant.FillBlue800,
                                        shape: IconButtonShape.CircleBorder15,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgGrid54X54,
                                        ),
                                      ),
                                         HorizontalSpace(width: 11),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Wonder Woman",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign:  TextAlign.start,
                                            style: TextStyle(
                                              
                                              fontSize: getFontSize(
                                                14,
                                              ),
                                              fontFamily: 'SF Pro Display',
                                              fontWeight: FontWeight.w500,
                                              height: 1.00,
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              183.00,
                                            ),
                                            margin: getMargin(
                                              top: 11,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "was released in Action genre.",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "3d",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                  
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                    isRtl: isRtl,

                                    svgPath: ImageConstant.imgArrowright24X24,
                                    height: getSize(
                                      22.00,
                                    ),
                                    width: getSize(
                                      22.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  children: [
                                    CustomIconButton(
                                      height: 34,
                                      width: 34,
                                      margin: getMargin(
                                     
                                        top: 13,
                                        bottom: 13,
                                      ),
                                      variant: IconButtonVariant.FillRed700,
                                      shape: IconButtonShape.CircleBorder15,
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgGrid34X34,
                                      ),
                                    ),
                                      HorizontalSpace(width: 11),
                                    Padding(
                                      padding: getPadding(
                                       
                                        top: 12,
                                        bottom: 8,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Vikings",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              196.00,
                                            ),
                                            margin: getMargin(
                                              top: 9,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "episode 2 of season 5 released.",
                                                    overflow: TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant.gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily: 'SF Pro Display',
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "5d",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color: ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily: 'SF Pro Display',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                               
                               
                                CommonImageView(
                                  isRtl: isRtl,
                                  svgPath: ImageConstant.imgArrowright24X24,
                                  height: getSize(
                                    22.00,
                                  ),
                                  width: getSize(
                                    22.00,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 33,
                        
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "This month",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  
                                  fontSize: getFontSize(
                                    16,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 14,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                     top: 13,
                                    bottom: 13,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        17.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath: ImageConstant.imgUseravatar1,
                                      height: getSize(
                                        34.00,
                                      ),
                                      width: getSize(
                                        34.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                   HorizontalSpace(width: 13),
                                Padding(
                                  padding: getPadding(
                                   
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          170.00,
                                        ),
                                        margin: getMargin(
                                          top: 3,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Barbara Brown",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "and",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    12,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.24,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "8 others",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  
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
                                      Padding(
                                        padding: getPadding(
                                          top: 11,
                                          
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 1,
                                              ),
                                              child: Text(
                                                "started following you.",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    13,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            HorizontalSpace(width: 10),
                                            Padding(
                                              padding: getPadding(
                                                
                                                bottom: 2,
                                              ),
                                              child: Text(
                                                "2w",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  color: ColorConstant.gray600,
                                                  fontSize: getFontSize(
                                                    13,
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
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                   
                                    top: 12,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      CustomIconButton(
                                        height: 34,
                                        width: 34,
                                        margin: getMargin(
                                          top: 1,
                                          bottom: 5,
                                        ),
                                        variant: IconButtonVariant.FillRed700,
                                        shape: IconButtonShape.CircleBorder15,
                                        child: CommonImageView(
                                          svgPath: ImageConstant.imgGrid34X34,
                                        ),
                                      ),
                                       HorizontalSpace(width: 13),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              right: 10,
                                            ),
                                            child: Text(
                                              "Vikings",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              129.00,
                                            ),
                                            margin: getMargin(
                                              top: 8,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "season 5 released.",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "3w",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:
                                                        ColorConstant.gray600,
                                                    fontSize: getFontSize(
                                                      13,
                                                    ),
                                                    fontFamily:
                                                        'SF Pro Display',
                                                    fontWeight:
                                                        FontWeight.w400,
                                                    height: 1.00,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                  
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright24X24,
                                    height: getSize(
                                      22.00,
                                    ),
                                    width: getSize(
                                      22.00,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              top: 15,
                            ),
                             padding: getPadding(
                              left: 10,
                              right: 10
                            ),
                            decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                  
                                    top: 8,
                                    bottom: 8,
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                          bottom: 5,
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              17.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgUseravatar2,
                                            height: getSize(
                                              34.00,
                                            ),
                                            width: getSize(
                                              34.00,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      HorizontalSpace(width: 15),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: getHorizontalSize(
                                              183.00,
                                            ),
                                            margin: getMargin(
                                              top: 3,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Elizabeth Jones",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "and",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        12,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 0.24,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    bottom: 1,
                                                  ),
                                                  child: Text(
                                                    "14 others",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray900,
                                                      fontSize: getFontSize(
                                                        14,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 11,
                                              right: 10,
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: getPadding(
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "liked your review.",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 10,
                                                  ),
                                                  child: Text(
                                                    "3w",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign:  TextAlign.start,
                                                    style: TextStyle(
                                                      color: ColorConstant
                                                          .gray600,
                                                      fontSize: getFontSize(
                                                        13,
                                                      ),
                                                      fontFamily:
                                                          'SF Pro Display',
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      height: 1.00,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 19,
                                   
                                    bottom: 19,
                                  ),
                                  child: CommonImageView(
                                    isRtl: isRtl,
                                    svgPath: ImageConstant.imgArrowright24X24,
                                    height: getSize(
                                      22.00,
                                    ),
                                    width: getSize(
                                      22.00,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
