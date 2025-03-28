import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/user_profile_followers_following_screen/user_profile_followers_following_screen.dart';
import 'package:movia/presentation/user_profile_page/user_profile_page.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/spacing.dart';

class UserProfileTabContainerScreen extends StatefulWidget {
  @override
  State<UserProfileTabContainerScreen> createState() => _UserProfileTabContainerScreenState();
}

class _UserProfileTabContainerScreenState extends State<UserProfileTabContainerScreen> with SingleTickerProviderStateMixin

 {
TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body:SafeArea( 
          child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: getVerticalSize(
                  376.00,
                ),
                width: size.width,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          bottom: 1,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.userImg,
                          height: getSize(
                            375.00,
                          ),
                          width: size.width,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                       height: getSize(
                            375.00,
                          ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors:isDark?[
                            ColorConstant.darkBg,
                           Colors.black.withOpacity(0.05),
                          ]: [
                           ColorConstant.whiteA700, 
                           ColorConstant.whiteA7007f,
                          ],
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        
                         
                          Align(
                            alignment: Alignment.center,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 10,
                                right: 24,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  BkBtn(),
                                  Text(
                                    "@m_smith",
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
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 30,
                                    right: 24,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(
                                        40.00,
                                      ),
                                    ),
                                    child: CommonImageView(
                                      imagePath:
                                          ImageConstant.imgUseravatar32X32,
                                      height: getSize(
                                        80.00,
                                      ),
                                      width: getSize(
                                        80.00,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: getPadding(
                                    left: 24,
                                    top: 19,
                                    right: 24,
                                  ),
                                  child: Text(
                                    "Mary Smith",
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
                              CustomButton(isDark:isDark,
                                width: 101,
                                text: "Following",
                                margin: getMargin(
                                  left: 24,
                                  top: 15,
                                  right: 24,
                                ),
                                padding: ButtonPadding.PaddingAll7,
                                fontStyle:
                                    ButtonFontStyle.SFProDisplayRegular13,
                                alignment: Alignment.center,
                              ),
                            ],
                          ),
                        
                        
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 30,
                                right: 24,
                                bottom: 21,
                              ),
                              child: InkWell(
                                onTap: (){
                                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>UserProfileFollowersFollowingScreen()),
  );
                                },
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Followers",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                               
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 19,
                                              top: 10,
                                              right: 19,
                                            ),
                                            child: Text(
                                              "12K",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.gray600,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.24,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 4,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Following",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                               
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 21,
                                              top: 7,
                                              right: 21,
                                            ),
                                            child: Text(
                                              "8K",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.gray600,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.24,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        top: 3,
                                        bottom: 3,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Watched",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                               
                                                fontSize: getFontSize(
                                                  14,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w500,
                                                height: 1.00,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              left: 17,
                                              top: 10,
                                              right: 17,
                                            ),
                                            child: Text(
                                              "514",
                                              overflow:
                                                  TextOverflow.ellipsis,
                                              textAlign:  TextAlign.start,
                                              style: TextStyle(
                                                color:
                                                    ColorConstant.gray600,
                                                fontSize: getFontSize(
                                                  12,
                                                ),
                                                fontFamily:
                                                    'SF Pro Display',
                                                fontWeight: FontWeight.w400,
                                                letterSpacing: 0.24,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
             Container(
                    margin: getMargin(
                      left: 20,
                      right: 20
                    ),
                      decoration: BoxDecoration(
                        color: ColorConstant.red100,
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: TabBar(
                       controller: tabController,
                       onTap: (_){
                        setState(() {
                          
                        });
                       },
                        tabs: [
                          Tab(
                            text: "reviews",
                          ),
                          Tab(
                            text: "likes",
                          ),
                       
                       
                        ],
                        labelColor: ColorConstant.whiteA700,
                        unselectedLabelColor: ColorConstant.redA400,
                        indicator:BoxDecoration(
            color: ColorConstant.redA400,
            borderRadius: BorderRadius.only(
              topLeft:
             tabController!.index==0?
              isRtl?Radius.circular(0):Radius.circular(7):
              isRtl?Radius.circular(7):Radius.circular(0)
              ,
              topRight:
              tabController!.index==0?
             isRtl?Radius.circular(7):Radius.circular(0):
             isRtl?Radius.circular(0):Radius.circular(7)
              ,
             bottomLeft:
              tabController!.index==0? 
              isRtl?Radius.circular(0):Radius.circular(7):
             
              isRtl?Radius.circular(7):Radius.circular(0)
              ,
              bottomRight:
               tabController!.index==0?
              isRtl?Radius.circular(7):Radius.circular(0):
             
              isRtl?Radius.circular(0):Radius.circular(7)
              ,
            )
          ),
          
                      ),
                    ),
                 VerticalSpace(height: 10),
                    Expanded(
                      child: TabBarView(
                        physics: BouncingScrollPhysics(),
                        controller: tabController,
                         children: [
                          UserProfilePage(),
                    
                          UserProfilePage(),
                        ],
                      ),
                    ),
                 
          ],
        ),
      ),
    );
  }
}
