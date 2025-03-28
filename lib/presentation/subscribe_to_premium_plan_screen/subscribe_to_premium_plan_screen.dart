import 'package:movia/data/subscription.dart';
import 'package:movia/presentation/no_cards_screen/no_cards_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';
import '../subscribe_to_premium_plan_screen/widgets/listtelevision_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';

class SubscribeToPremiumPlanScreen extends StatefulWidget {
  @override
  State<SubscribeToPremiumPlanScreen> createState() => _SubscribeToPremiumPlanScreenState();
}

class _SubscribeToPremiumPlanScreenState extends State<SubscribeToPremiumPlanScreen> {
  int selectedIndex=0;
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
           Container(
            padding: getPadding(
              left: 20,
              right: 20,
              top: 20
            ),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
               children: [
                BkBtn(),
               ],
             ),
           ),
                  
           Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: getPadding(
                    left: 24,
                    right: 24,
                    bottom: 20,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     
                  
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 13,
                            top: 20,
                            right: 13,
                          ),
                          child: Text(
                            "Subscribe to Premium Plan",
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: getHorizontalSize(
                            262.00,
                          ),
                          margin: getMargin(
                            left: 13,
                            top: 14,
                            right: 13,
                          ),
                          child: Text(
                            "Select one of the following Premium plans for unlimited access to all videos, then press the continue button",
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
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: getPadding(
                            left: 13,
                            top: 44,
                            right: 13,
                          ),
                          child: ListView.separated(
                            separatorBuilder: (context,index)=>VerticalSpace(height: 30),
                            physics: BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: subscriptionList.length,
                            itemBuilder: (context, index) {
                              return InkWell(
                                 onTap: (){
        setState(() {
          selectedIndex=index;
          

        });
        
      },
                                child: Container(
                                  
                                   decoration: BoxDecoration(
          color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              7.00,
            ),
          ),
          border: Border.all(
            color:selectedIndex==index? ColorConstant.redA400:Colors.transparent,
            width: getHorizontalSize(
              1.00,
            ),
          ),
        ),
                                  child: ListtelevisionItemWidget(index:index)));
                            },
                          ),
                        ),
                      ),
                      CustomButton(isDark:isDark,
                        width: size.width,
                        text: "Continue",
                        margin: getMargin(
                          top: 32,
                        ),
                        onTap: (){
                          Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>NoCardsScreen()),
  );
                        },
                        alignment: Alignment.centerLeft,
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
