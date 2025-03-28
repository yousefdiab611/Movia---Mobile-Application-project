import 'package:movia/data/ages.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';
import '../search_filter_age_screen/widgets/ages_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class SearchFilterAgeScreen extends StatelessWidget {
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
          
            Padding(
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
                    "Age",
                    overflow: TextOverflow.ellipsis,
                    textAlign:  TextAlign.center,
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
            
            
             Expanded(
         child: GridView.builder(
                padding: getPadding(
              left: 24,
              top: 10,
              right: 24,
              bottom: 20,
            ),
               
                physics: BouncingScrollPhysics(),
                itemCount: agesList.length,
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
                  return  AgesItemWidget(index: index,);
                 
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
