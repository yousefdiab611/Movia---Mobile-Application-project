import 'package:movia/widgets/bkbtn.dart';

import '../../widgets/spacing.dart';
import '../user_profile_followers_following_screen/widgets/listuseravatar2_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class UserProfileFollowersFollowingScreen extends StatefulWidget {
  @override
  State<UserProfileFollowersFollowingScreen> createState() => _UserProfileFollowersFollowingScreenState();
}

class _UserProfileFollowersFollowingScreenState extends State<UserProfileFollowersFollowingScreen> with SingleTickerProviderStateMixin {
  
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
        
        body:SafeArea( child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          
         
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: getPadding(
                  left: 20,
                  top: 20,
                  bottom: 20,
                  right: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                  BkBtn(),
                    Padding(
                      padding: getPadding(
                        left: 87,
                        top: 6,
                        bottom: 6,
                      ),
                      child: Text(
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
                            text: "Followers",
                          ),
                          Tab(
                            text: "Following",
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
                      ListView.builder( padding: getPadding(
              left: 24,
              top: 20,
              right: 24,
              bottom: 36,
            ),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 11,
              itemBuilder: (context, index) {
                return Listuseravatar2ItemWidget(
                  index:index
                );
              },
            ),
           
                      ListView.builder( padding: getPadding(
              left: 24,
              top: 20,
              right: 24,
              bottom: 36,
            ),
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 11,
              itemBuilder: (context, index) {
                return Padding(
      padding: getPadding(
        top: 5.0,
        bottom: 5.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    23.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgUseravatar76X76,
                  height: getSize(
                    46.00,
                  ),
                  width: getSize(
                    46.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              HorizontalSpace(width: 15),
              Padding(
                padding: getPadding(
                 
                  top: 7,
                  bottom: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sophia Taylor",
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
                    Padding(
                      padding: getPadding(
                        top: 7,
                        right: 10,
                      ),
                      child: Text(
                        "@s_taylor",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
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
          CustomButton(isDark:isDark,
            width: 100,
            text: "Following",
            margin: getMargin(
            
              top: 8,
              bottom: 8,
            ),
            padding: ButtonPadding.PaddingAll7,
            fontStyle: ButtonFontStyle.SFProDisplayRegular13,
          ),
        ],
      ),
    );
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
