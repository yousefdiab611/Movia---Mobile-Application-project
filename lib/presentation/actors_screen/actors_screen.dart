import 'package:movia/data/actors.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';
import '../actors_screen/widgets/listimg_item_widget.dart';
import '../actors_screen/widgets/listimg_two_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

class ActorsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
    
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
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
                              "Actors",
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    left: 20,
                   bottom: 10,
                    right: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    
                      Padding(
                        padding: getPadding(
                          top: 10,
                         
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                           ImageConstant.imgFavorite24X24,
                           color: ColorConstant.redA400,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                            HorizontalSpace(width: 10),
                            Text(
                              "Popular Actors of the Week",
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 4,
                          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            // childAspectRatio: 151/174,
                            mainAxisExtent: getVerticalSize(174),
                             crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(
                          10.00,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          20.00,
                        ),
                      ),

                          itemBuilder: (context, index) {
                            return ListimgItemWidget(index : index);
                          },
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 32,
                         
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CommonImageView(
                              svgPath: ImageConstant.imgIcon,
                              height: getSize(
                                24.00,
                              ),
                              width: getSize(
                                24.00,
                              ),
                            ),
                            HorizontalSpace(width: 10),
                            Text(
                              "Top Actors",
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
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 12,
                        ),
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: actorsList.length,
                             gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                            // childAspectRatio: 105/64,
                            mainAxisExtent: getVerticalSize(110),
                             crossAxisCount: 4,
                        mainAxisSpacing: getHorizontalSize(
                          10.00,
                        ),
                        crossAxisSpacing: getHorizontalSize(
                          20.00,
                        ),
                      ),
                          itemBuilder: (context, index) {
                            return ListimgTwoItemWidget(index : index);
                          },
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
    );
  }
}
