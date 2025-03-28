import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/add_card_screen/add_card_screen.dart';
import 'package:movia/presentation/order_summary_screen/order_summary_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/spacing.dart';

class PaymentMethodsScreen extends StatelessWidget {
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
           
            Padding(
              padding: getPadding(
                left: 24,
                top: 20,
                right: 24,
              ),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BkBtn(),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                left: 24,
                top: 36,
                right: 24,
              ),
              child: Text(
                "Payment Methods",
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
            Padding(
              padding: getPadding(
                left: 24,
                top: 14,
                right: 24,
              ),
              child: Text(
                "Select one of the following payment methods",
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  
                  children: [
                    VerticalSpace(height: 30),
                    InkWell(
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
                                    return OrderSummaryScreen();
                                  });

                      },
                      child: Container(
                        margin: getMargin(
                          left: 24,
                          
                          right: 24,
                        ),
                        padding: getPadding(
                          left: 10,
                          right: 10
                        ),
                        decoration: BoxDecoration(
                          color:isDark?ColorConstant.darkBg: ColorConstant.gray200,
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
                              
                                top: 15,
                                bottom: 14,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 1,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          7.00,
                                        ),
                                      ),
                                      child: CommonImageView(
                                        svgPath: ImageConstant.imgClose50X50,
                                        height: getSize(
                                          50.00,
                                        ),
                                        width: getSize(
                                          50.00,
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  HorizontalSpace(width: 20),
                                  Padding(
                                    padding: getPadding(
                                     
                                      top: 3,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mastercard",
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
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "4319 **** **** 1289",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign:  TextAlign.start,
                                            style: TextStyle(
                                              color: ColorConstant.gray600A7,
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 28,
                              
                                bottom: 28,
                              ),
                              child: CommonImageView(
                                isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright24X24,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
               VerticalSpace(height: 20),
               
                    InkWell(
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
                                    return OrderSummaryScreen();
                                  });

                      },
                      child: Container(
                        margin: getMargin(
                          left: 24,
                         
                          right: 24,
                        ),
                        padding: getPadding(left: 10,
                        right: 10),
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
                             
                                top: 15,
                                bottom: 14,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  CustomIconButton(
                                    height: 50,
                                    width: 50,
                                    margin: getMargin(
                                      bottom: 1,
                                    ),
                                    variant: IconButtonVariant.FillLightblue900,
                                    shape: IconButtonShape.RoundedBorder7,
                                    child: CommonImageView(
                                      svgPath: ImageConstant.imgShapes,
                                    ),
                                  ),
                                  HorizontalSpace(width: 25),
                                  Padding(
                                    padding: getPadding(
                                     
                                      top: 3,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Visa",
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
                                        Padding(
                                          padding: getPadding(
                                            top: 15,
                                          ),
                                          child: Text(
                                            "5185 **** **** 8100",
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
                                ],
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 28,
                               
                                bottom: 28,
                              ),
                              child: CommonImageView(
                                isRtl: isRtl,
                                svgPath: ImageConstant.imgArrowright24X24,
                                height: getSize(
                                  24.00,
                                ),
                                width: getSize(
                                  24.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           
           
            CustomButton(isDark:isDark,
              width: size.width,
              text: "Add Cards",
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
                                    return AddCardScreen();
                                  });

                      },
              margin: getMargin(
                left: 24,
               
                right: 24,
                bottom: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
