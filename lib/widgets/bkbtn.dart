import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../core/app_export.dart';

class BkBtn extends StatelessWidget {
  const BkBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
bool isRtl = context.locale==Constants.arLocal;
    return CommonImageView(
                            isRtl: isRtl,
                            isDark: isDark,
                            isBackBtn: true,
                            imagePath: ImageConstant.back,
                            height: getSize(
                              36.00,
                            ),
                            width: getSize(
                              36.00,
                            ),
                          );
    
  }
}