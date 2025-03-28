import 'package:country_list_pick/country_list_pick.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/continue_with_number_verification_screen/continue_with_number_verification_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';
import 'package:movia/widgets/spacing.dart';

class ContinueWithNumberScreen extends StatefulWidget {
  @override
  State<ContinueWithNumberScreen> createState() => _ContinueWithNumberScreenState();
}

class _ContinueWithNumberScreenState extends State<ContinueWithNumberScreen> {
  String dialCode="+20";
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
        
        body:SafeArea( child: Container(
          width: size.width,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
          
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 24,
                          top: 20,
                          right: 24,
                        ),
                        child: BkBtn(),
                      ),
                    ],
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 34,
                      right: 24,
                    ),
                    child: Text(
                      "Continue with mobile number",
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
                      "Enter your mobile number to continue",
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
                  Container(
                              margin: EdgeInsets.only(
                                left: getHorizontalSize(
                                  24.00,
                                ),
                                top: getVerticalSize(
                                  30.00,
                                ),
                                right: getHorizontalSize(
                                  24.00,
                                ),
                              ),
                             
                              child:Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: getVerticalSize(46),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(7),
                                          border: Border.all(
                                            color: ColorConstant.gray500,

                                          )
                                        ),
                                        child: CountryListPick(
                                          
                                          theme: CountryTheme(
                                            isShowFlag: true,
                                            isShowTitle: false,
                                            isShowCode: false,
                                            isDownIcon: false,
                                            showEnglishName: false,
                                            labelColor: Colors.black,
                                        
                                          ),
                                          initialSelection: dialCode,
                                          
                                          // or
                                          // initialSelection: 'US'
                                          onChanged: ( code) {
                                            setState(() {
                                              if(code!.dialCode!=null){
                                                dialCode=code.dialCode!;
                                              }
          
                                              else print("dialCode is null");
                                            });
                                          },
                                        ),
                                      ),
                                     HorizontalSpace(width: 10),
                                      Expanded(
                                        child: Container(
                                          width: getHorizontalSize(170),
                                          child: CustomTextFormField(
                                            isDark: isDark,
                                            hintText: 'PhoneNumber',

                                            
                                           
                                           
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                            
                            ),
               
               
               
                ],
              ),
                 
             
             
             
              CustomButton(isDark:isDark,
                width: 327,
                text: "Next",
                margin: getMargin(
                  left: 24,
                
                  right: 24,
                  bottom: 20,
                ),
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>ContinueWithNumberVerificationScreen()),
  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
