import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/country.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/spacing.dart';

import 'country_list_item.dart';

class SearchFilterCountryScreen extends StatefulWidget {
  @override
  State<SearchFilterCountryScreen> createState() => _SearchFilterCountryScreenState();
}

class _SearchFilterCountryScreenState extends State<SearchFilterCountryScreen> {
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
              alignment: Alignment.centerLeft,
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
                      "Country",
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
                HorizontalSpace(width: 36),
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
                itemCount: countryList.length,
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
                  return CountryListItem(index:index);
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
