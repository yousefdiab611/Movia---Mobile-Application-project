import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/onboarding_1_vone_screen/onboarding_1_vone_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_)=>Onboarding1VoneScreen()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.redA400,
        body: Center(
          child: CommonImageView(
            imagePath: ImageConstant.appLogo,
            height: getVerticalSize(
              103.00,
            ),
            width: getHorizontalSize(
              150.00,
            ),
          ),
        ),
      ),
    );
  }
}
