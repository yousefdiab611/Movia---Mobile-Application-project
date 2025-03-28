
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/gestures.dart';
import 'package:movia/presentation/actor_profile_full_bio_screen/actor_profile_full_bio_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';

import '../actor_profile_screen/widgets/actor_profile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';

class ActorProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    List<String> galleryList=[
      ImageConstant.gallery1,
      ImageConstant.gallery2
    ];
    return Scaffold(
     
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
           
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     Container(
              height: getVerticalSize(
                395.00,
              ),
              width: size.width,
            
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                CommonImageView(
                  imagePath: ImageConstant.imgActorimg,
                  height: getVerticalSize(
                    395.00,
                  ),
                  width: getHorizontalSize(
                    375.00,
                  ),
                ),
                Container(
                   height: getVerticalSize(
                395.00,
              ),
              width: size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                       ColorConstant.whiteA700.withOpacity(.5),
                        ColorConstant.whiteA700,
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          height: getVerticalSize(
                            90.00,
                          ),
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomIconButton(
                                height: 36,
                                width: 36,
                                margin: getMargin(
                                  left: 24,
                                  top: 10,
                                  right: 24,
                                ),
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                variant: IconButtonVariant.FillGray200b2,
                                alignment: Alignment.topCenter,
                                child:BkBtn(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: getSize(
                          100.00,
                        ),
                        width: getSize(
                          100.00,
                        ),
                        margin: getMargin(
                          left: 38,
                          top: 12,
                          right: 38,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    50.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgActorimg,
                                  height: getSize(
                                    100.00,
                                  ),
                                  width: getSize(
                                    100.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: Padding(
                                padding: getPadding(
                                  left: 10,
                                  top: 10,
                                  right: 10,
                                ),
                                child: CommonImageView(
                                  svgPath: ImageConstant.imgCheckmark24X24,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 38,
                          top: 15,
                          right: 38,
                        ),
                        child: Text(
                          "Emma Watson",
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
                          left: 38,
                          top: 16,
                          right: 38,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 1,
                              ),
                              child: Text(
                                "Actress",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray9009e,
                                  fontSize: getFontSize(
                                    13,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                            ),
                            Container(
                              height: getSize(
                                4.00,
                              ),
                              width: getSize(
                                4.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                top: 4,
                                bottom: 7,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray9007a,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 1,
                              ),
                              child: Text(
                                "Producer",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray9009e,
                                  fontSize: getFontSize(
                                    13,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  height: 1.00,
                                ),
                              ),
                            ),
                            Container(
                              height: getSize(
                                4.00,
                              ),
                              width: getSize(
                                4.00,
                              ),
                              margin: getMargin(
                                left: 10,
                                top: 4,
                                bottom: 7,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray9007a,
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    2.00,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 10,
                              ),
                              child: Text(
                                "Soundtrack",
                                overflow: TextOverflow.ellipsis,
                                textAlign:  TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.bluegray9009e,
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
                      CustomButton(isDark:isDark,
                        width: 140,
                        text: "Following",
                        margin: getMargin(
                          left: 38,
                          top: 25,
                          right: 38,
                        ),
                        padding: ButtonPadding.PaddingAll11,
                      ),
                      Padding(
                        padding: getPadding(
                          left: 38,
                          top: 19,
                          right: 37,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Followers",
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
                                  Padding(
                                    padding: getPadding(
                                      left: 16,
                                      top: 10,
                                      right: 16,
                                    ),
                                    child: Text(
                                      "32M",
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
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Rank",
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
                                  Padding(
                                    padding: getPadding(
                                      left: 8,
                                      top: 10,
                                      right: 8,
                                    ),
                                    child: Text(
                                      "79",
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
                            Padding(
                              padding: getPadding(
                                top: 3,
                                bottom: 1,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Awards",
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
                                  Padding(
                                    padding: getPadding(
                                      left: 15,
                                      top: 10,
                                      right: 15,
                                    ),
                                    child: Text(
                                      "25",
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
                      ),
                    ],
                  ),
                ),
                ],
              ),
            ),
           
                    Padding(
                      padding: getPadding(
                       top: 20,
                       left: 20,
                        right: 20
                      ),
                      child: Text(
                        "Bio",
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
                        327.00,
                      ),
                      margin: getMargin(
                        top: 12,
                        left: 20,
                        right: 20
                     
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "Emma Charlotte Duerre Watson was born in Paris, France, to British parents, Jacqueline Luesby and Chris Watson, both lawyers. She moved to Oxfordshire when she was five, where she attended",
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
                            TextSpan(
                              text: ".",
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
                            TextSpan(
                              text: "..",
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
                            TextSpan(
                              text: " ",
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
                            TextSpan(
                              text: "More",
                            recognizer: TapGestureRecognizer()..onTap = () =>   showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(24),
                                      )
                                  ),
                                  builder: (context) {
                                    return ActorProfileFullBioScreen();
                                  }),
                              style: TextStyle(
                                color: ColorConstant.redA400,
                                fontSize: getFontSize(
                                  14,
                                ),
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                height: 1.43,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 20,
                        left: 20,
                        right: 20
                       
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Gallery",
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
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding: getPadding(
                                  top: 3,
                                  bottom: 1,
                                ),
                                child: Text(
                                  "See all",
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
                              Padding(
                                padding: getPadding(
                                  left: 5,
                                ),
                                child: CommonImageView(
                                   isRtl: isRtl,
                                  svgPath: ImageConstant.imgArrowright24X24,
                                  height: getSize(
                                    20.00,
                                  ),
                                  width: getSize(
                                    20.00,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                   Container(
                    height: getVerticalSize(140),

                    child: ListView.separated(
                      padding: getPadding(
                        top: 12,
                        left: 20,
                        right: 20
                      ),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        

                      return  ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: galleryList[index],
                              height: getVerticalSize(
                                140.00,
                              ),
                              width: getHorizontalSize(
                                250.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          );
                       
                    },
                    
                     separatorBuilder: (context,inded)=>HorizontalSpace(width: 10), 
                     itemCount: galleryList.length
                     ),
                   ),
                    Padding(
                      padding: getPadding(
                        top: 40,
                         
                        left: 20,
                        right: 20
                      
                      ),
                      child: Text(
                        "Staring in",
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
                        top: 12,
                        left: 20,
                        right: 20
                        
                      ),
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return ActorProfileItemWidget();
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
