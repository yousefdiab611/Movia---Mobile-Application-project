import 'package:easy_localization/easy_localization.dart';
import 'package:movia/presentation/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movia/translations/codegen_loader.g.dart';

import 'core/theme/theme_constants.dart';
import 'core/theme/theme_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(
  EasyLocalization(
    supportedLocales: [Locale("en"), Locale("ar")],
      path: "assets/translations",
      assetLoader: CodegenLoader(),
      fallbackLocale: Locale('en'),
    child: MyApp()));
}
ThemeManager themeManager = ThemeManager();
class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

void initState() {

// TODO: implement initState

themeManager.addListener( themeListener);

super.initState();

}

@override

void dispose() {

// TODO: implement dispose

themeManager.removeListener(themeListener);

super.dispose();

}

void themeListener() {

if(mounted)

setState(() {

});

}
  @override
  Widget build(BuildContext context) {
   
    return MaterialApp(
      title: 'Movia',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode:themeManager.themeMode ,
      home: SplashScreen(),
    );
  }
}
