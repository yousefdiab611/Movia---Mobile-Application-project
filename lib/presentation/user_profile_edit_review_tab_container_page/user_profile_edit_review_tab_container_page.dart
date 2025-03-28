import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/user_profile_scroll_contextual_menu_page/user_profile_scroll_contextual_menu_page.dart';

// ignore_for_file: must_be_immutable
class UserProfileEditReviewTabContainerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        
        body:SafeArea( child: Container(
          decoration: BoxDecoration(
            color: ColorConstant.whiteA700,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
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
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Container(
                      height: getVerticalSize(
                        740.00,
                      ),
                      width: size.width,
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.centerLeft,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
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
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CommonImageView(
                                          svgPath: ImageConstant.imgArrowleft,
                                          height: getSize(
                                            36.00,
                                          ),
                                          width: getSize(
                                            36.00,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 87,
                                            top: 6,
                                            bottom: 6,
                                          ),
                                          child: Text(
                                            "@m_smith",
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
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(
                                      327.00,
                                    ),
                                    margin: getMargin(
                                      top: 30,
                                    ),
                                    child: TabBar(
                                      //TODO: Please add tab controller
                                      tabs: [
                                        Tab(
                                          text: "reviews",
                                        ),
                                        Tab(
                                          text: "likes",
                                        ),
                                      ],
                                      labelColor: ColorConstant.whiteA700,
                                      unselectedLabelColor:
                                          ColorConstant.redA400,
                                      indicator: BoxDecoration(
                                        color: ColorConstant.redA400,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(
                                            getHorizontalSize(
                                              7.00,
                                            ),
                                          ),
                                          bottomLeft: Radius.circular(
                                            getHorizontalSize(
                                              7.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: getMargin(
                                      top: 20,
                                    ),
                                    height: getVerticalSize(
                                      614.00,
                                    ),
                                    child: TabBarView(
                                      //TODO: Please add tab controller
                                      children: [
                                        UserProfileScrollContextualMenuPage(),
                                        UserProfileScrollContextualMenuPage(),
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
                              margin: getMargin(
                                top: 273,
                                bottom: 273,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray900A7,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: ColorConstant.gray200,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                              bottom: 138,
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                getHorizontalSize(
                                                  16.00,
                                                ),
                                              ),
                                              child: CommonImageView(
                                                imagePath: ImageConstant
                                                    .imgUseravatar32X32,
                                                height: getSize(
                                                  32.00,
                                                ),
                                                width: getSize(
                                                  32.00,
                                                ),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: getHorizontalSize(
                                              298.00,
                                            ),
                                            margin: getMargin(
                                              top: 14,
                                              bottom: 74,
                                            ),
                                            child: Text(
                                              "Cruella is often fun to watch, but its cavalier reversal of its core character cheapens the very idea of a corrective narrative. It takes a quintessential villain and nuances her character into oblivion.",
                                              maxLines: null,
                                              textAlign: TextAlign.justify,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.bluegray900,
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                height: 1.43,
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
                        ],
                      ),
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
