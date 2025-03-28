import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color gray60099 = fromHex('#99686b6e');

  static Color whiteA7007f = fromHex('#7fffffff');

  static Color red700 = fromHex('#c8213f');

  static Color darkBg = fromHex('#1A1D1F');
  
  static Color darkContainer = fromHex('#272B30');

  static Color gray900Cc = fromHex('#cc1a1d1f');

  static Color gray9006c = fromHex('#6c1a1d1f');

  static Color gray200B2 = fromHex('#b2e9eaea');

  static Color green800 = fromHex('#00882f');

  static Color gray50 = fromHex('#f8f8f8');

  static Color lightBlue900 = fromHex('#00579f');

  static Color red100 = fromHex('#fbc8ce');

  static Color whiteA70033 = fromHex('#33ffffff');

  static Color greenA700 = fromHex('#14aa37');

  static Color bluegray900B2 = fromHex('#b2272b30');

  static Color yellow800 = fromHex('#f3b22c');

  static Color black900 = fromHex('#000000');

  static Color gray50087 = fromHex('#87a9aaac');

  static Color yellow900 = fromHex('#df7a1d');

  static Color gray100Cc = fromHex('#ccf2f2f2');

  static Color redA400 = fromHex('#ef233c');

  static Color bluegray9009e = fromHex('#9e272b30');

  static Color gray900A7 = fromHex('#a71a1d1f');

  static Color gray600A7 = fromHex('#a7686b6e');

  static Color gray600 = fromHex('#686b6e');

  static Color gray400 = fromHex('#c9cacb');

  static Color gray500 = fromHex('#a9aaac');

  static Color blue800 = fromHex('#125fd2');

  static Color gray90000 = fromHex('#001a1d1f');

  static Color gray900 = fromHex('#1a1d1f');

  static Color gray90067 = fromHex('#671a1d1f');

  static Color gray9007a = fromHex('#7a1a1d1f');

  static Color gray80037 = fromHex('#373c3c43');

  static Color gray200 = fromHex('#e9eaea');

  static Color bluegray900 = fromHex('#272b30');

  static Color red50A7 = fromHex('#a7fde9ec');

  static Color whiteA70000 = fromHex('#00ffffff');

  static Color gray40067 = fromHex('#67c9cacb');

  static Color gray9007f = fromHex('#7f1a1d1f');

  static Color gray90095 = fromHex('#951a1d1f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
