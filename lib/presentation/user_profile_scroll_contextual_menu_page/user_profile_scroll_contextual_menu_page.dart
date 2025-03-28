import 'package:movia/presentation/reviews_delete_review_dialog/reviews_delete_review_dialog.dart';
import 'package:movia/presentation/user_profile_edit_review_page/user_profile_edit_review_page.dart';
import 'package:movia/widgets/spacing.dart';
import '../user_profile_scroll_contextual_menu_page/widgets/listuseravatar_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserProfileScrollContextualMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return  Dialog(
      backgroundColor:Colors.transparent,
      
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListuseravatarItemWidget(),
          VerticalSpace(height: 10),
            Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              width: getHorizontalSize(250),
                             
                              decoration: BoxDecoration(
                                color:isDark?ColorConstant.darkBg.withOpacity(0.7): ColorConstant.gray100Cc,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    7.00,
                                  ),
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: getPadding(
                                        left: 16,
                                        top: 10,
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: getPadding(
                                              top: 4,
                                              bottom: 3,
                                            ),
                                            child: Text(
                                              "Share review",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily: 'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                         Icon(Icons.share,
                                         color:isDark?ColorConstant.whiteA700: Colors.black,
                                         size: 20,
                                         ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      250.00,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray80037,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                         showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(0),
                                      )
                                  ),
                                  builder: (context) {
                                    return Padding(
                                  padding:    EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                                      child: UserProfileEditReviewPage());
                                  });
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 10,
                                          right: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                "Edit review",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                            Image.asset(
                                              ImageConstant.edit,
                                              color: isDark?Colors.white:Colors.black,
                                              height: getSize(
                                                22.00,
                                              ),
                                              width: getSize(
                                                22.00,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: getVerticalSize(
                                      1.00,
                                    ),
                                    width: getHorizontalSize(
                                      250.00,
                                    ),
                                    margin: getMargin(
                                      top: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.gray80037,
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: InkWell(
                                      onTap: (){
                                        Navigator.pop(context);
                                        showDialog(context: context,
                                         builder: (context){
                                          return ReviewsDeleteReviewDialog();
                                         });
                                      },
                                      child: Padding(
                                        padding: getPadding(
                                          left: 16,
                                          top: 10,
                                          right: 10,
                                          bottom: 10,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                top: 4,
                                                bottom: 3,
                                              ),
                                              child: Text(
                                                "Delete review",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign:  TextAlign.start,
                                                style: TextStyle(
                                                  
                                                  fontSize: getFontSize(
                                                    14,
                                                  ),
                                                  fontFamily: 'SF Pro Display',
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.00,
                                                ),
                                              ),
                                            ),
                                              Image.asset(
                                              ImageConstant.delete,
                                             
                                              height: getSize(
                                                22.00,
                                              ),
                                              width: getSize(
                                                22.00,
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
                          ),
                     
        ],
      ));
        
  }
}
