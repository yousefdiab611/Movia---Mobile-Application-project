import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/search_filter_age_screen/search_filter_age_screen.dart';
import 'package:movia/presentation/search_filter_country_screen/search_filter_country_screen.dart';
import 'package:movia/presentation/search_filter_genre_screen/search_filter_genre_screen.dart';
import 'package:movia/presentation/search_filter_release_year_screen/search_filter_release_year_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/spacing.dart';

class SearchFilterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
        
        body:SafeArea( 
          child: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                
              
               Padding(
                padding: getPadding(
                  left: 20,
                  right: 20,top: 20
                ),
                 child: Row(
mainAxisAlignment: MainAxisAlignment.start,
children: [
  BkBtn()
],

                 ),
               ),

               
                Padding(
                  padding: getPadding(
                    left: 24,
                    top: 25,
                    right: 24,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "Filter",
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
                      Text(
                        "Reset",
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
                    ],
                  ),
                ),
                VerticalSpace(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SearchFilterGenreScreen()),
  );
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 10,
                      bottom: 10,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 54,
                              width: 54,
                              variant: IconButtonVariant.FillYellow900,
                              shape: IconButtonShape.CircleBorder27,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgGrid54X54,
                              ),
                            ),
                            HorizontalSpace(width: 15),
                            Padding(
                              padding: getPadding(
                               
                                top: 19,
                                bottom: 18,
                              ),
                              child: Text(
                                "Genre",
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
                          ],
                        ),
                        CommonImageView(
                          isRtl: isRtl,
                          svgPath: ImageConstant.imgArrowright24X24,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SearchFilterReleaseYearScreen()),
  );
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 10,
                      bottom: 10,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 54,
                              width: 54,
                              variant: IconButtonVariant.FillRed700,
                              shape: IconButtonShape.CircleBorder27,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCalendar,
                              ),
                            ),
                             HorizontalSpace(width: 15),
                            Text(
                              "Release Year",
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
                        Padding(
                          padding: getPadding(
                            top: 15,
                            bottom: 15,
                          ),
                          child: CommonImageView(
                            isRtl: isRtl,
                            svgPath: ImageConstant.imgArrowright24X24,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SearchFilterCountryScreen()),
  );
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 10,
                      bottom: 10,
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 54,
                              width: 54,
                              variant: IconButtonVariant.FillGreen800,
                              shape: IconButtonShape.CircleBorder27,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgCall,
                              ),
                            ),
                            HorizontalSpace(width: 15),
                            Text(
                              "Country",
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
                        Padding(
                          padding: getPadding(
                            top: 15,
                            bottom: 15,
                          ),
                          child: CommonImageView(
                            isRtl: isRtl,
                            svgPath: ImageConstant.imgArrowright24X24,
                            height: getSize(
                              24.00,
                            ),
                            width: getSize(
                              24.00,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SearchFilterAgeScreen()),
  );
                  },
                  child: Padding(
                    padding: getPadding(
                      left: 20,
                      top: 10,
                      right: 20,
                      bottom: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CustomIconButton(
                              height: 54,
                              width: 54,
                              variant: IconButtonVariant.FillBlue800,
                              shape: IconButtonShape.CircleBorder27,
                              padding: IconButtonPadding.PaddingAll8,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgUser54X54,
                              ),
                            ),
                             HorizontalSpace(width: 15), 
                            Text(
                              "Age",
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
                        CommonImageView(
                          isRtl: isRtl,
                          svgPath: ImageConstant.imgArrowright24X24,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
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
    );
  }
}
