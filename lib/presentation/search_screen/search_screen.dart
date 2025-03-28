import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/search_filter_screen/search_filter_screen.dart';
import 'package:movia/presentation/search_result_row_page/search_result_row_page.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_search_view.dart';
import 'package:movia/widgets/spacing.dart';

class SearchScreen extends StatefulWidget {
  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchTextfieController = TextEditingController();

  
  bool searching=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            VerticalSpace(height: 20),
            Padding(
              padding: getPadding(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BkBtn(),
                  HorizontalSpace(width: 12),
                  Expanded(
                    child: CustomSearchView(
                      width: size.width,
                      focusNode: FocusNode(),
                      
                      onFieldSubmitted: (val){
                        setState(() {
                          searching=true;
                          
                        });
                      },
                      controller: searchTextfieController,
                      hintText: "Search for Movies, Series...",
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
                          left: getHorizontalSize(
                            15.00,
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SearchFilterScreen()),
                            );
                          },
                          child: CommonImageView(
                            imagePath: ImageConstant.filter,
                          ),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxWidth: getHorizontalSize(
                          54.00,
                        ),
                        maxHeight: getVerticalSize(
                          24.00,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            VerticalSpace(height: 25),
            Expanded(
              child:searching?
              SearchResultRowPage()
              : Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 178,
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgIllustrationGray200,
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
                      "Search in Movia",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
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
                      256.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: Text(
                      "By typing in search box, Movia search in movies, series and actors then show you the best results. ",
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
                ],
              ),
            ),
        
        
          ],
        ),
      ),
    );
  }

   
}
