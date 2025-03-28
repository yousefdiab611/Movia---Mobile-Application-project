import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/year_release.dart';
import 'package:movia/presentation/search_filter_release_year_screen/release_year_item.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/spacing.dart';

class SearchFilterReleaseYearScreen extends StatefulWidget {
  @override
  State<SearchFilterReleaseYearScreen> createState() => _SearchFilterReleaseYearScreenState();
}

class _SearchFilterReleaseYearScreenState extends State<SearchFilterReleaseYearScreen> {
 bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( 
          child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: getPadding(
                      left: 24,
                      top: 20,
                      bottom: 10,
                      right: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                       BkBtn(),
                        Text(
                          "Release Year",
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
                    HorizontalSpace(width: 36)
                      ],
                    ),
                  ),
                ),
              
           Expanded(
             child: GridView.builder(
                    padding: getPadding(
                  left: 24,
                  top: 10,
                  right: 24,
                  bottom: 20,
                ),
                   
                    physics: BouncingScrollPhysics(),
                    itemCount: yearReleaseList.length,
                     gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                      // childAspectRatio: 151/174,
                      mainAxisExtent: getVerticalSize(62),
                       crossAxisCount: 2,
                  mainAxisSpacing: getHorizontalSize(
                    10.00,
                  ),
                  crossAxisSpacing: getHorizontalSize(
                    20.00,
                  ),
                  ),
                    itemBuilder: (context, index) {
                      return  ReleaseYearItem(index: index,);
                     
                    },
                  ),
           ),
            
            CustomButton(isDark:isDark,
              width: size.width,
              text: "Show Results",
              margin: getMargin(
                left: 24,
                top: 10,
                right: 24,
                bottom: 10,
              ),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
