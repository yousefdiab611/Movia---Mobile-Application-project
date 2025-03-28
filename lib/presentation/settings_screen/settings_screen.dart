import 'package:movia/presentation/settings_change_language_screen/settings_change_language_screen.dart';
import 'package:movia/presentation/settings_screen/widgets/select_quality_bottom_sheet.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';
import '../../main.dart';
import '../../widgets/custom_button.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_switch.dart';


class SettingsScreen extends StatefulWidget {
  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> 
with SingleTickerProviderStateMixin{
  bool switch1 = true;
  bool switch2 = false;
  bool switch3 = true;
double usedMemory=2.5;
double totalMemory=64;


TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
    themeManager.themeMode==ThemeMode.dark?tabController!.index=0:tabController!.index=1;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    bool isRtl = context.locale == Constants.arLocal;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(left: 20, right: 20, top: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  BkBtn(),
                  Padding(
                    padding: getPadding(
                      top: 6,
                      bottom: 6,
                    ),
                    child: Text(
                      "Settings",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.start,
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
                  HorizontalSpace(width: 36),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    right: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 20,
                          right: 10,
                        ),
                        child: Text(
                          "General",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
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
                     VerticalSpace(height: 15),
                     InkWell(
                         borderRadius: BorderRadius.circular(7),
                        onTap: (){
                            showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(15),
                                      )
                                  ),
                                  builder: (context) {
                                    return SettingsChangeLanguageScreen();
                                  });
                        },
                       child: Container(
                          padding: getPadding(left: 15, right: 15),
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
                                      svgPath: ImageConstant.imgIconGray600,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 6,
                                        bottom: 2,
                                      ),
                                      child: Text(
                                        "Change language",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                                  top: 17,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "English",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
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
                        borderRadius: BorderRadius.circular(7),
                        onTap: (){
                            showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  shape: RoundedRectangleBorder(
                                    
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(15),
                                      )
                                  ),
                                  builder: (context) {
                                    return SelectQualityBottomSheet();
                                  });
                        },
                        child: Container(
                          padding: getPadding(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                      svgPath: ImageConstant.streamQuality,
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
                                        "Stream Quality",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                                  top: 17,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Full HD",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.start,
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
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          setState(() {
                            switch1 = !switch1;
                          });
                        },
                        child: Container(
                          padding: getPadding(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                      svgPath: ImageConstant.imgNotification,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 5,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "Notification",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                              CustomSwitch(
                                isDark: isDark,
                                margin: getMargin(
                                  top: 12,
                                  bottom: 12,
                                ),
                                value: switch1,
                                onChanged: (value) {
                                  setState(() {
                                    switch1 = !switch1;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalSpace(height: 15),
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          setState(() {
                            switch2 = !switch2;
                          });
                        },
                        child: Container(
                          padding: getPadding(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                      svgPath: ImageConstant.imgNotification,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 5,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "Autoplay Videos",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                              CustomSwitch(
                                isDark: isDark,
                                margin: getMargin(
                                  top: 12,
                                  bottom: 12,
                                ),
                                value: switch2,
                                onChanged: (value) {
                                  setState(() {
                                    switch2 = !switch2;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 30,
                        ),
                        child: Text(
                          "Cache",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
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
               VerticalSpace(height: 12),
                   LinearProgressIndicator(
                    value: usedMemory/totalMemory,
                    color: ColorConstant.redA400,
                    backgroundColor:isDark?ColorConstant.whiteA70033:ColorConstant.gray200,
                   ),
            
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            top: 10,
                            right: 1,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                "Used ${usedMemory.toString()} GB",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray600,
                                  fontSize: getFontSize(
                                    11,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.22,
                                  height: 1.00,
                                ),
                              ),
                              Text(
                                "Free ${(totalMemory-usedMemory).toString()} GB",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: ColorConstant.gray600,
                                  fontSize: getFontSize(
                                    11,
                                  ),
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.22,
                                  height: 1.00,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalSpace(height: 15),
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          setState(() {
                            switch3 = !switch3;
                          });
                        },
                        child: Container(
                          padding: getPadding(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                      svgPath: ImageConstant.imgCar,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 5,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "Enable cache",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                              CustomSwitch(
                                isDark: isDark,
                                margin: getMargin(
                                  top: 12,
                                  bottom: 12,
                                ),
                                value: switch3,
                                onChanged: (value) {
                                  setState(() {
                                    switch3 = !switch3;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      VerticalSpace(height: 15),
                      InkWell(
                        borderRadius: BorderRadius.circular(7),
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (context) {
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
                left: 35,
                top: 20,
                right: 35,
              ),
              child: Text(
                "Clear Cache",
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
                left: 35,
                top: 17,
                right: 35,
              ),
              child: Text(
                "Are you sure you want to clear cache ?",
                overflow: TextOverflow.ellipsis,
                textAlign:  TextAlign.start,
                style: TextStyle(
                  color: ColorConstant.gray600,
                  fontSize: getFontSize(
                    14,
                  ),
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  height: 1.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 35,
                top: 32,
                right: 35,
                bottom: 18,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomButton(isDark:isDark,
                    width: 100,
                    text: "Cancel",
                    variant: ButtonVariant.FillWhiteA700,
                    padding: ButtonPadding.PaddingAll7,
                    onTap: (){
                      Navigator.pop(context);
                    },
                    fontStyle: ButtonFontStyle.SFProDisplayRegular13Gray900,
                  ),
                  CustomButton(isDark:isDark,
                    width: 100,
                    text: "Clear Now",
                    onTap: (){
                       Navigator.pop(context);
                      setState(() {
                         usedMemory=0;

                      });
                    },
                    padding: ButtonPadding.PaddingAll7,
                    fontStyle: ButtonFontStyle.SFProDisplayRegular13,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
 
                              });
                        },
                        child: Container(
                          padding: getPadding(left: 15, right: 15),
                          decoration: BoxDecoration(
                            color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                      svgPath: ImageConstant.imgLink,
                                      height: getSize(
                                        24.00,
                                      ),
                                      width: getSize(
                                        24.00,
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 15,
                                        top: 5,
                                        bottom: 4,
                                      ),
                                      child: Text(
                                        "Clear cache",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.start,
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
                      Padding(
                        padding: getPadding(
                          top: 35,
                          right: 10,
                        ),
                        child: Text(
                          "Theme",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
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
                      VerticalSpace(height: 15),
                        Container(
                        decoration: BoxDecoration(
                          color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
                          borderRadius: BorderRadius.circular(
                            getHorizontalSize(
                              7.00,
                            ),
                          ),
                        ),
                        child: TabBar(
                          controller: tabController,
                          
                          onTap: (index){
                            if(index==0)
                            themeManager.toggleTheme(true);
                            else 
                            themeManager.toggleTheme(false);
                          },
                          indicator: BoxDecoration(
                            color: ColorConstant.redA400,
                            borderRadius: BorderRadius.circular(7)
                          ),

                          tabs: [
                          Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Dark mode",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                   color: tabController!.index==0?ColorConstant.whiteA700:
                                  isDark?ColorConstant.whiteA700:ColorConstant.black900,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.00,
                                ),
                              ),
                              HorizontalSpace(width: 16),
                              Padding(
                                padding: getPadding(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Image.asset(
                                  ImageConstant.darkMode,
                                  color: tabController!.index==0?ColorConstant.whiteA700:
                                  isDark?ColorConstant.gray500:ColorConstant.gray600,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ),
                           
                           
                            ],
                          )),
                          
                          Tab(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Light mode",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                    color: tabController!.index==1?ColorConstant.whiteA700:
                                  isDark?ColorConstant.whiteA700:ColorConstant.black900,
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  height: 1.00,
                                ),
                              ),
                              HorizontalSpace(width: 16),
                                Padding(
                                padding: getPadding(
                                  top: 10,
                                  bottom: 10,
                                ),
                                child: Image.asset(
                                  ImageConstant.lightMode,
                                  color: tabController!.index==1?ColorConstant.whiteA700:
                                  isDark?ColorConstant.gray500:ColorConstant.gray600,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                ),
                              ),
                           
                            ],
                          )),
                          
                        ]),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 35,
                          right: 10,
                        ),
                        child: Text(
                          "Other",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.start,
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
                      VerticalSpace(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                left: 9,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.imgTicket24X24,
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
                                      "Privacy & Policy",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                                top: 12,
                                right: 9,
                                bottom: 12,
                              ),
                              child: CommonImageView(
                                isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright20X20,
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
                      ),
                      VerticalSpace(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                left: 9,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.imgQuestion,
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
                                      "Help",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                                top: 12,
                                right: 9,
                                bottom: 12,
                              ),
                              child: CommonImageView(
                                isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright20X20,
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
                      ),
                      VerticalSpace(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: isDark?ColorConstant.darkContainer: ColorConstant.gray200,
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
                                left: 9,
                                top: 10,
                                bottom: 10,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  CommonImageView(
                                    svgPath: ImageConstant.imgInfo24X24,
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
                                      "About",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.start,
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
                                top: 12,
                                right: 9,
                                bottom: 12,
                              ),
                              child: CommonImageView(
                                 isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright20X20,
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(top: 10, bottom: 14),
                          child: Text(
                            "version 1.0",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: ColorConstant.gray600,
                              fontSize: getFontSize(
                                11,
                              ),
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.22,
                              height: 1.00,
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
