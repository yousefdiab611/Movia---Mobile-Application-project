import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/home.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/spacing.dart';

class BookmarkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
      
       body:SafeArea( 
          child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
               Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    left: 20,
                    top: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                     BkBtn(),
                     
                      Text(
                        "Bookmark List",
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
              Column(
                children: [
                  Padding(
                    padding: getPadding(
                      left: 24,
                      
                      right: 24,
                    ),
                    child: CommonImageView(
                      svgPath: ImageConstant.imgIllustration121X101,
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
                      top: 35,
                      right: 24,
                    ),
                    child: Text(
                      "Bookmark List is empty",
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
                  Container(
                    width: getHorizontalSize(
                      248.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: Text(
                      "After bookmarking movies and series, they are displayed here ",
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
            
              CustomButton(isDark:isDark,
                width: size.width,
                text: "Explorer More",
                margin: getMargin(
                  left: 24,
                
                  right: 24,
                  bottom: 20,
                ),
                onTap: (){
                  Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
    Home()), (Route<dynamic> route) => false);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
