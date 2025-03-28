import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class SearchNotFoundScreen extends StatelessWidget {
  TextEditingController searchTextfieController = TextEditingController();

  

  @override
  Widget build(BuildContext context) {

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
                CustomSearchView(
                  width: 327,
                  focusNode: FocusNode(),
                  controller: searchTextfieController,
                  hintText: "\"Something\"",
                  margin: getMargin(
                    left: 24,
                    top: 15,
                    right: 24,
                  ),
                  prefix: Container(
                    margin: getMargin(
                      all: 10,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgSearch,
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
                  suffix: Padding(
                    padding: EdgeInsets.only(
                      right: getHorizontalSize(
                        15.00,
                      ),
                    ),
                    child: IconButton(
                      onPressed: searchTextfieController.clear,
                      icon: Icon(
                        Icons.clear,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    minWidth: getHorizontalSize(
                      24.00,
                    ),
                    minHeight: getVerticalSize(
                      24.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 178,
                    right: 24,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgIllustrationGray200121X101,
                    height: getVerticalSize(
                      121.00,
                    ),
                    width: getHorizontalSize(
                      101.00,
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 33,
                    right: 24,
                  ),
                  child: Text(
                    "No Result",
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
                    "No results found, Please try other words",
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
        ),
       
      ),
         
    );
  }

   
}
