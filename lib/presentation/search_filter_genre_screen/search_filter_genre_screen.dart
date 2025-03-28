import 'package:movia/data/genres.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';
import '../search_filter_genre_screen/widgets/genre_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class SearchFilterGenreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
     
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Padding(
            padding: getPadding(
              left: 20,
              right: 20,
              top: 20,
              bottom: 10
            ),
             child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                           BkBtn(),
                          
                            Text(
                              "Genre",
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
                    
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 
                  Expanded(
                    child: GridView.builder(
                      padding: getPadding(
                    left: 24,
                    top: 25,
                    right: 24,
                    bottom: 20,
                  ),
                     
                      physics: BouncingScrollPhysics(),
                      itemCount: genreList.length,
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
                        return GenreItemWidget(index:index);
                      },
                    ),
                
                
                
                
                  ),
                  CustomButton(isDark:isDark,
                    width: size.width,
                    text: "Show Results",
                    margin: getMargin(
                      top: 10,
                      bottom: 10,
                      left: 20,
                      right: 20
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
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
