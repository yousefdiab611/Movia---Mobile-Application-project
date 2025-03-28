import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore_for_file: must_be_immutable
class ReviewsDeleteReviewDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: double.infinity,
      
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 44,
                top: 20,
                right: 44,
              ),
              child: Text(
                "Delete Review",
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
            Container(
              width: getHorizontalSize(
                206.00,
              ),
              margin: getMargin(
                left: 44,
                top: 18,
                right: 44,
              ),
              child: Text(
                "Are you sure you want to delete this review ?",
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
            Padding(
              padding: getPadding(
                left: 44,
                top: 36,
                right: 44,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 6,
                        left: 18,
                        right: 18
                      ),
                      child: Text(
                        "Cancel",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                         
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                       padding: getPadding(
                         left: 18,
                         right: 18,
                          top: 8,
                          bottom: 6,
                        ),
                        decoration: BoxDecoration(
                          color: ColorConstant.redA400,
                          borderRadius: BorderRadius.circular(7)
                        ),
                      child: Text(
                        "Delete Now",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.whiteA700,
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
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
