import 'package:movia/presentation/bookmark_screen/bookmark_screen.dart';
import 'package:movia/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:movia/presentation/history_page.dart';
import 'package:movia/presentation/my_profile_logout_dialog/my_profile_logout_dialog.dart';
import 'package:movia/presentation/settings_screen/settings_screen.dart';
import 'package:movia/presentation/subscribe_to_premium_plan_screen/subscribe_to_premium_plan_screen.dart';
import 'package:movia/presentation/user_profile_tab_container_screen/user_profile_tab_container_screen.dart';
import 'package:movia/widgets/spacing.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    top: 18,
                    bottom: 10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Profile",
                          overflow: TextOverflow.ellipsis,
                          textAlign:  TextAlign.start,
                          style: TextStyle(
                            
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 36,
                            right: 24,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  GestureDetector(
                                    onTap: (){
                                      Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>UserProfileTabContainerScreen()),
  );
                                    },
                                    
                                    child: Padding(
                                      padding: getPadding(
                                        top: 1,
                                        bottom: 1,
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(
                                          getHorizontalSize(
                                            38.00,
                                          ),
                                        ),
                                        child: CommonImageView(
                                          imagePath:
                                              ImageConstant.imgUseravatar76X76,
                                          height: getSize(
                                            76.00,
                                          ),
                                          width: getSize(
                                            76.00,
                                          ),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                               
                               
                                  HorizontalSpace(width: 12),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    children: [
                                      InkWell(
                                        onTap: (){
                                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>UserProfileTabContainerScreen()),
  );
                                        },
                                        child: Text(
                                          "Sophia Taylor",
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
                                      Padding(
                                        padding: getPadding(
                                          top: 5,
                                          right: 10,
                                        ),
                                        child: Text(
                                          "@s_taylor",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:  TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.gray500,
                                            fontSize: getFontSize(
                                              12,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            letterSpacing: 0.24,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                      CustomButton(isDark:isDark,
                                        width: 77,
                                        text: "Premium",
                                        margin: getMargin(
                                          top: 10,
                                          right: 10,
                                        ),
                                        onTap: (){
                                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SubscribeToPremiumPlanScreen()),
  );
                                        },
                                        variant: ButtonVariant.FillYellow800,
                                        padding: ButtonPadding.PaddingAll7,
                                        fontStyle: ButtonFontStyle
                                            .SFProDisplayMedium11,
                                        prefixWidget: Container(
                                          margin: getMargin(
                                            right:isRtl?0 :5,
                                            left: isRtl?5:0,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant
                                                .imgLightbulb14X14,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: (){
                                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>EditProfileScreen()),
  );
                                },
                                child: CustomIconButton(
                                  height: 30,
                                  width: 30,
                                
                                  variant: IconButtonVariant.FillGray200,
                                  shape: IconButtonShape.CircleBorder15,
                                  child: CommonImageView(
                                    svgPath: ImageConstant.imgEdit,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: getPadding(
                            left: 24,
                            top: 35,
                            right: 24,
                          ),
                          child: Text(
                            "Your Activities",
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
                      ),
                    VerticalSpace(height: 15),  
                     InkWell(
                      borderRadius: BorderRadius.circular(7),
                      onTap: (){
                        Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>BookmarkScreen()),
  );
                      },
                       child: Align(
                           alignment: Alignment.center,
                           child: Container(
                             margin: getMargin(
                              
                               left: 20,right: 20,
                            
                             ),
                             padding: getPadding(left: 15,
                             right: 15
                             ),
                             decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                               borderRadius: BorderRadius.circular(
                                 getHorizontalSize(
                                   7.00,
                                 ),
                               ),
                             ),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               crossAxisAlignment: CrossAxisAlignment.center,
                               mainAxisSize: MainAxisSize.max,
                               children: [
                                 Padding(
                                   padding: getPadding(
                                  
                                     top: 10,
                                     bottom: 10,
                                   ),
                                   child: Row(
                                     crossAxisAlignment: CrossAxisAlignment.center,
                                     mainAxisSize: MainAxisSize.min,
                                     children: [
                                       CommonImageView(
                                         svgPath: ImageConstant.imgLocation,
                                         height: getSize(
                        24.00,
                                         ),
                                         width: getSize(
                        24.00,
                                         ),
                                       ),
                                       HorizontalSpace(width: 15),
                                       Padding(
                                         padding: getPadding(
                                         
                        top: 5,
                        bottom: 4,
                                         ),
                                         child: Text(
                        "Bookmark List",
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
                                     ],
                                   ),
                                 ),
                                 Padding(
                                   padding: getPadding(
                                    
                                     top: 15,
                                    
                                     bottom: 13,
                                   ),
                                   child: Text(
                                     "16",
                                     overflow: TextOverflow.ellipsis,
                                     textAlign:  TextAlign.start,
                                     style: TextStyle(
                                       color: ColorConstant.gray600,
                                       fontSize: getFontSize(
                                         13,
                                       ),
                                       fontFamily: 'SF Pro Display',
                                       fontWeight: FontWeight.w400,
                                       height: 1.00,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                         ),
                     ),
                   VerticalSpace(height: 15),  
                     Align(
      alignment: Alignment.center,
      child: Container(
        margin: getMargin(
         
          left: 20,right: 20,
       
        ),
        padding: getPadding(left: 15,
        right: 15
        ),
        decoration: BoxDecoration(
         color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: getPadding(
             
                top: 10,
                bottom: 10,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  CommonImageView(
                    svgPath: ImageConstant.reviews,
                    height: getSize(
                      24.00,
                    ),
                    width: getSize(
                      24.00,
                    ),
                  ),
                  HorizontalSpace(width: 15),
                  Padding(
                    padding: getPadding(
                    
                      top: 5,
                      bottom: 4,
                    ),
                    child: Text(
                      "Reviews",
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
                ],
              ),
            ),
            Padding(
              padding: getPadding(
               
                top: 15,
               
                bottom: 13,
              ),
              child: Text(
                "512",
                overflow: TextOverflow.ellipsis,
                textAlign:  TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray600,
                  fontSize: getFontSize(
                    13,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 1.00,
                ),
              ),
            ),
          ],
        ),
      ),
    ),
                      VerticalSpace(height: 15),  
                      InkWell(
                        onTap: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>HistoryPage()),
  );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 20,
                             
                              right: 20,
                            ),
                            padding: getPadding(
                              left: 15,
                              right: 15
                            ),
                            decoration: BoxDecoration(
                             color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                   
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgPlay24X24,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                      ),
                                      
                                      HorizontalSpace(width: 15),
                                      Padding(
                                        padding: getPadding(
                                        
                      
                                          top: 6,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "History",
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
                                    ],
                                  ),
                                ),
                             
                              ],
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 20,
                                top: 35,
                                right: 20,
                              ),
                              child: Text(
                                "Account",
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
                      ),
                     VerticalSpace(height: 15),  
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SettingsScreen()),
  );
                        },
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            margin: getMargin(
                              left: 20,
                             
                              right: 20,
                            ),
                            padding: getPadding(left: 15,
                            right: 15),
                            decoration: BoxDecoration(
                             color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                   
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        svgPath: ImageConstant.imgSettings,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                      ),
                                       HorizontalSpace(width: 15),
                                      Padding(
                                        padding: getPadding(
                                          
                                          top: 6,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "Settings",
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
                                    ],
                                  ),
                                ),
                               
                              ],
                            ),
                          ),
                        ),
                      ),
                      VerticalSpace(height: 15),  
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                           
                            right: 20,
                          ),
                           padding: getPadding(left: 15,
                          right: 15),
                          decoration: BoxDecoration(
                           color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                 
                                 
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CommonImageView(
                                      svgPath: ImageConstant.imgTrash,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                 HorizontalSpace(width: 16),
                                    Padding(
                                      padding: getPadding(
                                      
                                        top: 6,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "My Subscription Plan",
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
                                  ],
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                     
                      VerticalSpace(height: 15),  
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: getMargin(
                            left: 20,
                           
                            right: 20,
                          ),
                           padding: getPadding(left: 15,
                          right: 15),
                          decoration: BoxDecoration(
                           color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: getPadding(
                                 
                                 
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    CommonImageView(
                                      svgPath: ImageConstant.imgLock,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                 HorizontalSpace(width: 16),
                                    Padding(
                                      padding: getPadding(
                                      
                                        top: 6,
                                        bottom: 1,
                                      ),
                                      child: Text(
                                        "Change Password",
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
                                  ],
                                ),
                              ),
                             
                            ],
                          ),
                        ),
                      ),
                     
                   
                      Align(
                        alignment: Alignment.center,
                        child: InkWell(
                           onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return MyProfileLogoutDialog();
                             
                             
                              });
                        },
                          child: Container(
                            margin: getMargin(
                              left: 20,
                              top: 15,
                              right: 20,
                            ),
                             padding: getPadding(left: 15,
                            right: 15),
                            decoration: BoxDecoration(
                              color: ColorConstant.redA400,
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  7.00,
                                ),
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: getPadding(
                                  
                                    top: 10,
                                    bottom: 10,
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CommonImageView(
                                        imagePath: ImageConstant.logout,
                                        height: getSize(
                                          24.00,
                                        ),
                                        width: getSize(
                                          24.00,
                                        ),
                                      ),
                                      HorizontalSpace(width: 15),
                                      Padding(
                                        padding: getPadding(
                                         
                                          top: 6,
                                          bottom: 2,
                                        ),
                                        child: Text(
                                          "Logout",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:  TextAlign.start,
                                          style: TextStyle(
                                            color: ColorConstant.whiteA700,
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 12,
                                  
                                    bottom: 12,
                                  ),
                                  child:Icon(Icons.arrow_forward_ios_rounded,
                                  color: Colors.white,
                                  size: 12,
                                  )
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
            ),
          ],
        ),
      ),
    );
  }
}
