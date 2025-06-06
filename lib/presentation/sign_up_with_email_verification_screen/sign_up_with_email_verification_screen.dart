import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/sign_up_with_email_successfully_screen/sign_up_with_email_successfully_screen.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class SignUpWithEmailVerificationScreen extends StatefulWidget {
  @override
  State<SignUpWithEmailVerificationScreen> createState() => _SignUpWithEmailVerificationScreenState();
}

class _SignUpWithEmailVerificationScreenState extends State<SignUpWithEmailVerificationScreen> {
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
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 20,
                      right: 24,
                    ),
                    child: Row(
                      children: [
                      BkBtn(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 34,
                      right: 24,
                    ),
                    child: Text(
                      "Verification code",
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
                  Container(
                    width: getHorizontalSize(
                      261.00,
                    ),
                    margin: getMargin(
                      left: 24,
                      top: 15,
                      right: 24,
                    ),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text:
                                "Please type the verification code we sent it to ",
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
                            text: "s.taylor@gmail.com",
                            style: TextStyle(
                              
                              fontSize: getFontSize(
                                14,
                              ),
                              color: isDark?Colors.white:Colors.black,
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              height: 1.43,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                      padding: getPadding(
                        left: 24,
                        top: 63,
                        right: 24,
                      ),
                      child: Container(
                        width: getHorizontalSize(
                          380.00,
                        ),
                        height: getVerticalSize(
                          61.00,
                        ),
                        child: PinCodeTextField(
                          appContext: context,
                          length: 5,
                          obscureText: false,
                          obscuringCharacter: '*',
                          backgroundColor: Colors.transparent,
                          keyboardType: TextInputType.number,
                          autoDismissKeyboard: true,
                          enableActiveFill: true,
                          inputFormatters: [
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          onChanged: (value) {},
                          textStyle: TextStyle(
                            color: ColorConstant.gray900,
                            fontSize: getFontSize(
                              24,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                          ),
                          pinTheme: PinTheme(
                            fieldHeight: getHorizontalSize(
                              44.00,
                            ),
                            fieldWidth: getHorizontalSize(
                              50.00,
                            ),
                            shape: PinCodeFieldShape.box,
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                            selectedFillColor: Colors.transparent,
                            activeFillColor: ColorConstant.redA400,
                            inactiveFillColor: Colors.transparent,
                            inactiveColor: ColorConstant.gray500,
                            selectedColor: ColorConstant.redA400,
                            activeColor: ColorConstant.redA400,
                          ),
                        ),
                  
                  
                      ),
                    )
          
             
            ,  Padding(
                    padding: getPadding(
                      left: 24,
                      top: 24,
                      right: 24,
                    ),
                    child: Text(
                      "Request new code",
                      overflow: TextOverflow.ellipsis,
                      textAlign:  TextAlign.start,
                      style: TextStyle(
                        color: ColorConstant.redA400,
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
          


              CustomButton(isDark:isDark,
                width: size.width,
                text: "Verify your email",
                onTap: (){
                  Navigator.push(
    context,
    MaterialPageRoute(builder: (context)
 =>SignUpWithEmailSuccessfullyScreen()),
  );
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
      ),
    );
  }
}
