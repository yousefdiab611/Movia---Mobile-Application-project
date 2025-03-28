import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/onboarding_2_vone_screen/onboarding_2_vone_screen.dart';
import 'package:movia/presentation/onboarding_3_vone_screen/onboarding_3_vone_screen.dart';
import 'package:movia/presentation/onboarding_4_vone_screen/onboarding_4_vone_screen.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding1VoneScreen extends StatefulWidget {
  @override
  State<Onboarding1VoneScreen> createState() => _Onboarding1VoneScreenState();
}

class _Onboarding1VoneScreenState extends State<Onboarding1VoneScreen> {
  PageController? _pageController;
  int _currentIndex=0;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = new PageController(initialPage: _currentIndex);
    _pageController!.addListener(() {});
  }
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
        
        body:SafeArea(
           child: Stack(
             children: [
               PageView(
                    controller: _pageController,
              onPageChanged: (index) {
                _currentIndex = index;
                setState(() {});
              },
                 children: [
                   Container(
                     height: getVerticalSize(
                       702.00,
                     ),
                     width: size.width,
                     margin: getMargin(
                       top: 32,
                    
                     ),
                     child: Stack(
                       alignment: Alignment.topCenter,
                       children: [
                         Align(
                           alignment: Alignment.topCenter,
                           child: Container(
                             height: getVerticalSize(
                               426.00,
                             ),
                             width: getHorizontalSize(
                               290.00,
                             ),
                             margin: getMargin(
                               left: 42,
                               right: 42,
                               bottom: 10,
                             ),
                             decoration: BoxDecoration(
                               color: ColorConstant.gray200,
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                                 topRight: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                               ),
                             ),
                           ),
                         ),
                         Align(
                           alignment: Alignment.topCenter,
                           child: Padding(
                             padding: getPadding(
                               left: 42,
                               right: 42,
                               bottom: 10,
                             ),
                             child: ClipRRect(
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                                 topRight: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                               ),
                               child: CommonImageView(
                                 imagePath: ImageConstant.imgOnboarding1,
                                 height: getVerticalSize(
                                   444.00,
                                 ),
                                 width: getHorizontalSize(
                                   290.00,
                                 ),
                                 fit: BoxFit.cover,
                               ),
                             ),
                           ),
                         ),
                         Align(
                           alignment:isRtl?Alignment.bottomRight: Alignment.bottomLeft,
                           child: Container(
                            height: getVerticalSize(310),
                             margin: getMargin(
                               top: 10,
                             ),
                             decoration: BoxDecoration(
                               color:isDark?ColorConstant.darkContainer: ColorConstant.gray50,
                               borderRadius: BorderRadius.only(
                                 topLeft: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                                 topRight: Radius.circular(
                                   getHorizontalSize(
                                     15.00,
                                   ),
                                 ),
                               ),
                             ),
                           
                           
                             child: Column(
                               mainAxisSize: MainAxisSize.min,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                                 Container(
                                   width: getHorizontalSize(
                                     185.00,
                                   ),
                                   margin: getMargin(
                                     left: 25,
                                     top: 26,
                                     right: 25,
                                   ),
                                   child: Text(
                                     "Never miss\nnew movies & series",
                                     maxLines: null,
                                     textAlign:  TextAlign.start,
                                     style: TextStyle(
                                       
                                       fontSize: getFontSize(
                                         20,
                                       ),
                                       fontFamily: 'SF Pro Display',
                                       fontWeight: FontWeight.w700,
                                       height: 1.40,
                                     ),
                                   ),
                                 ),
                                 Align(
                                   alignment: Alignment.center,
                                   child: Container(
                                     width: getHorizontalSize(
                                       325.00,
                                     ),
                                     margin: getMargin(
                                       left: 25,
                                       top: 20,
                                       right: 25,
                                     ),
                                     child: Text(
                                       "Be the first one to watch the latest movies and series on Movia",
                                       maxLines: null,
                                       textAlign: TextAlign.justify,
                                       style: TextStyle(
                                         color: ColorConstant.gray600,
                                         fontSize: getFontSize(
                                           16,
                                         ),
                                         fontFamily: 'SF Pro Display',
                                         fontWeight: FontWeight.w400,
                                         height: 1.38,
                                       ),
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
               Onboarding2VoneScreen(),
               Onboarding3VoneScreen(),
               
                 ],
               ),
             Align(
              alignment: Alignment.bottomCenter,
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                     Container(
                                  height: getVerticalSize(
                                    6.00,
                                  ),
                                  margin: getMargin(
                                    left: 25,
                                    top: 29,
                                    right: 25,
                                  ),
                                  child: AnimatedSmoothIndicator(
                                    activeIndex: _currentIndex,
                                    count: 3,
                                    axisDirection: Axis.horizontal,
                                    effect: ExpandingDotsEffect(
                                      spacing: 8,
                                      activeDotColor: ColorConstant.redA400,
                                      dotColor:isDark?ColorConstant.gray500: ColorConstant.gray90067,
                                      strokeWidth: 1.5,
                                      dotHeight: getVerticalSize(
                                        6.00,
                                      ),
                                      dotWidth: getHorizontalSize(
                                        6.00,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomButton(isDark:isDark,
                                  width: size.width,
                                  text: "Get Started",
                                  margin: getMargin(
                                    left: 25,
                                    top: 45,
                                    right: 25,
                                    bottom: 10,
                                  ),
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
                                    return Onboarding4VoneScreen();
                                  });
                                  },
                                  alignment: Alignment.center,
                                ),
                             
                ],
               ),
             )
             
             ],
           ),
      ),
    );
  }
}
