import 'package:movia/widgets/spacing.dart';
import '../series_detail_episodes_screen/widgets/listposter3_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_icon_button.dart';

class SeriesDetailEpisodesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.centerLeft,
                child: SingleChildScrollView(
                  child: Container(
                    height: size.height,
                    width: size.width,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: getVerticalSize(
                              400.00,
                            ),
                            width: size.width,
                            margin: getMargin(
                              bottom: 10,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: CommonImageView(
                                    imagePath: ImageConstant.imgPoster232X153,
                                    height: getVerticalSize(
                                      400.00,
                                    ),
                                    width: getHorizontalSize(
                                      375.00,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width,
                                        child: Container(
                                          height: getVerticalSize(
                                            90.00,
                                          ),
                                          width: size.width,
                                          child: Stack(
                                            alignment: Alignment.bottomRight,
                                            children: [
                                              Align(
                                                alignment: Alignment.topLeft,
                                                child: Container(
                                                  height: getVerticalSize(
                                                    75.00,
                                                  ),
                                                  width: size.width,
                                                  margin: getMargin(
                                                    bottom: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment(
                                                        0.5,
                                                        -3.0616171314629196e-17,
                                                      ),
                                                      end: Alignment(
                                                        0.5,
                                                        0.9999999999999999,
                                                      ),
                                                      colors: [
                                                        ColorConstant.gray90000,
                                                        ColorConstant.gray9007f,
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              CustomIconButton(
                                                height: 36,
                                                width: 36,
                                                margin: getMargin(
                                                  left: 24,
                                                  top: 10,
                                                  right: 24,
                                                ),
                                                variant: IconButtonVariant
                                                    .FillGray200b2,
                                                alignment:
                                                    Alignment.bottomRight,
                                                child: CommonImageView(
                                                  svgPath:
                                                      ImageConstant.imgBookmark,
                                                ),
                                              ),
                                              CustomIconButton(
                                                height: 36,
                                                width: 36,
                                                margin: getMargin(
                                                  left: 24,
                                                  top: 10,
                                                  right: 24,
                                                ),
                                                variant: IconButtonVariant
                                                    .FillGray200b2,
                                                alignment: Alignment.bottomLeft,
                                                child: CommonImageView(
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: getMargin(
                                          top: 180,
                                        ),
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                            begin: Alignment(
                                              0.5,
                                              -3.0616171314629196e-17,
                                            ),
                                            end: Alignment(
                                              0.5,
                                              0.9999999999999999,
                                            ),
                                            colors: [
                                              ColorConstant.whiteA70000,
                                              ColorConstant.whiteA700,
                                            ],
                                          ),
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
                                                left: 24,
                                                top: 55,
                                              ),
                                              child: Column(
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
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign:  TextAlign.start,
                                                      style: TextStyle(
                                                        color: ColorConstant
                                                            .gray900,
                                                        fontSize: getFontSize(
                                                          20,
                                                        ),
                                                        fontFamily:
                                                            'SF Pro Display',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 1.00,
                                                      ),
                                                    ),
                                                  ),
                                                  Container(
                                                    width: getHorizontalSize(
                                                      207.00,
                                                    ),
                                                    margin: getMargin(
                                                      top: 9,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                            bottom: 3,
                                                          ),
                                                          child: Text(
                                                            "2013",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                 TextAlign.start,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray9009e,
                                                              fontSize:
                                                                  getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.24,
                                                              height: 1.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: getSize(
                                                            4.00,
                                                          ),
                                                          width: getSize(
                                                            4.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 4,
                                                            bottom: 7,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .gray9007a,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 1,
                                                          ),
                                                          child: Text(
                                                            "Action, Drama",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                 TextAlign.start,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray9009e,
                                                              fontSize:
                                                                  getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.24,
                                                              height: 1.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          height: getSize(
                                                            4.00,
                                                          ),
                                                          width: getSize(
                                                            4.00,
                                                          ),
                                                          margin: getMargin(
                                                            top: 4,
                                                            bottom: 7,
                                                          ),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: ColorConstant
                                                                .gray9007a,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              getHorizontalSize(
                                                                2.00,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            bottom: 3,
                                                          ),
                                                          child: Text(
                                                            "6 seasons",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                 TextAlign.start,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray9009e,
                                                              fontSize:
                                                                  getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              letterSpacing:
                                                                  0.24,
                                                              height: 1.00,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: getMargin(
                                                      top: 7,
                                                      right: 10,
                                                    ),
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          10.00,
                                                        ),
                                                      ),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding: getPadding(
                                                            top: 2,
                                                            bottom: 2,
                                                          ),
                                                          child:
                                                              CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgStar,
                                                            height: getSize(
                                                              16.00,
                                                            ),
                                                            width: getSize(
                                                              16.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 2,
                                                            top: 3,
                                                            bottom: 2,
                                                          ),
                                                          child: Text(
                                                            "4.2",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                 TextAlign.start,
                                                            style: TextStyle(
                                                              color:
                                                                  ColorConstant
                                                                      .gray900,
                                                              fontSize:
                                                                  getFontSize(
                                                                14,
                                                              ),
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              height: 1.00,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding: getPadding(
                                                            left: 2,
                                                            top: 4,
                                                          ),
                                                          child: Text(
                                                            "(158K)",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                 TextAlign.start,
                                                            style: TextStyle(
                                                              color: ColorConstant
                                                                  .bluegray9009e,
                                                              fontSize:
                                                                  getFontSize(
                                                                14,
                                                              ),
                                                              fontFamily:
                                                                  'SF Pro Display',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
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
                                            CustomIconButton(
                                              height: 44,
                                              width: 44,
                                              margin: getMargin(
                                                top: 68,
                                                right: 24,
                                                bottom: 18,
                                              ),
                                              shape: IconButtonShape
                                                  .RoundedBorder22,
                                              padding:
                                                  IconButtonPadding.PaddingAll8,
                                              child: CommonImageView(
                                                svgPath: ImageConstant.imgPlay,
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
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: getPadding(
                              left: 24,
                              top: 10,
                              right: 24,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: getPadding(
                                    right: 10,
                                  ),
                                  child: Text(
                                    "Story",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign:  TextAlign.start,
                                    style: TextStyle(
                                      
                                      fontSize: getFontSize(
                                        18,
                                      ),
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      height: 1.00,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    327.00,
                                  ),
                                  margin: getMargin(
                                    top: 17,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              "The adventures of a Ragnar Lothbrok: the greatest hero of his age. The series tells the saga of Ragnar's band of Viking brothers and his family as he rises to become King of the Viking tribes",
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
                                          text: ".",
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
                                          text: "..",
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
                                          text: " ",
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
                                          text: "More",
                                          style: TextStyle(
                                            color: ColorConstant.redA400,
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
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 40,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                        "Gallery",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign:  TextAlign.start,
                                        style: TextStyle(
                                          
                                          fontSize: getFontSize(
                                            18,
                                          ),
                                          fontFamily: 'SF Pro Display',
                                          fontWeight: FontWeight.w500,
                                          height: 1.00,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 2,
                                          bottom: 2,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 3,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "See all",
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
                                            HorizontalSpace(width: 5),
                                            CommonImageView(
                                               isRtl: isRtl,
                                              svgPath: ImageConstant
                                                  .imgArrowright24X24,
                                              height: getSize(
                                                20.00,
                                              ),
                                              width: getSize(
                                                20.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: getVerticalSize(
                                    190.00,
                                  ),
                                  width: getHorizontalSize(
                                    327.00,
                                  ),
                                  margin: getMargin(
                                    top: 12,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              7.00,
                                            ),
                                          ),
                                          child: CommonImageView(
                                            imagePath:
                                                ImageConstant.imgVideo190X327,
                                            height: getVerticalSize(
                                              190.00,
                                            ),
                                            width: getHorizontalSize(
                                              327.00,
                                            ),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: getVerticalSize(
                                            3.00,
                                          ),
                                          width: getHorizontalSize(
                                            307.00,
                                          ),
                                          margin: getMargin(
                                            all: 10,
                                          ),
                                          child: Stack(
                                            alignment: Alignment.centerLeft,
                                            children: [
                                              Container(
                                                height: getVerticalSize(
                                                  3.00,
                                                ),
                                                width: getHorizontalSize(
                                                  307.00,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:
                                                      ColorConstant.whiteA70033,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                    topRight: Radius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                    bottomLeft: Radius.circular(
                                                      getHorizontalSize(
                                                        1.00,
                                                      ),
                                                    ),
                                                    bottomRight:
                                                        Radius.circular(
                                                      getHorizontalSize(
                                                        2.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: getVerticalSize(
                                                  3.00,
                                                ),
                                                width: getHorizontalSize(
                                                  59.00,
                                                ),
                                                margin: getMargin(
                                                  right: 10,
                                                ),
                                                decoration: BoxDecoration(
                                                  color: ColorConstant.redA400,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                    getHorizontalSize(
                                                      1.50,
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
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              color: ColorConstant.gray900A7,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                        svgPath: ImageConstant.imgTicket,
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
                                        svgPath: ImageConstant.imgSignal,
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
                                Container(
                                  width: double.infinity,
                                  margin: getMargin(
                                    top: 171,
                                    bottom: 34,
                                  ),
                                  decoration: BoxDecoration(
                                    color: ColorConstant.gray200,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: getVerticalSize(
                                          5.00,
                                        ),
                                        width: getHorizontalSize(
                                          80.00,
                                        ),
                                        margin: getMargin(
                                          left: 24,
                                          top: 10,
                                          right: 24,
                                        ),
                                        decoration: BoxDecoration(
                                          color: ColorConstant.gray400,
                                          borderRadius: BorderRadius.circular(
                                            getHorizontalSize(
                                              2.50,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 12,
                                          right: 24,
                                        ),
                                        child: Text(
                                          "Vikings / Episodes",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:  TextAlign.start,
                                          style: TextStyle(
                                            
                                            fontSize: getFontSize(
                                              18,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 33,
                                          right: 24,
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
                                                top: 2,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Season 1",
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
                                            ),
                                            CommonImageView(
                                              svgPath: ImageConstant.imgArrowup,
                                              height: getSize(
                                                20.00,
                                              ),
                                              width: getSize(
                                                20.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 16,
                                          right: 24,
                                        ),
                                        child: ListView.builder(
                                          physics:
                                              NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: 3,
                                          itemBuilder: (context, index) {
                                            return Listposter3ItemWidget();
                                          },
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 18,
                                          right: 24,
                                        ),
                                        child: Text(
                                          "See more episodes",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:  TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.redA400,
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
                                          left: 24,
                                          top: 21,
                                          right: 24,
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
                                                top: 2,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Season 2",
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
                                            ),
                                            CommonImageView(
                                              svgPath: ImageConstant
                                                  .imgCheckmark20X20,
                                              height: getSize(
                                                20.00,
                                              ),
                                              width: getSize(
                                                20.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 24,
                                          top: 22,
                                          right: 24,
                                          bottom: 10,
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
                                                top: 2,
                                              ),
                                              child: Text(
                                                "Season 3",
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
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: CommonImageView(
                                                svgPath: ImageConstant
                                                    .imgCheckmark20X20,
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
                                    ],
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
            ),
          ],
        ),
      ),
    );
  }
}
