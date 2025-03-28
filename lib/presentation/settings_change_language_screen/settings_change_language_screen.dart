import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

class SettingsChangeLanguageScreen extends StatefulWidget {
  @override
  State<SettingsChangeLanguageScreen> createState() =>
      _SettingsChangeLanguageScreenState();
}

class _SettingsChangeLanguageScreenState
    extends State<SettingsChangeLanguageScreen> {
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale == Constants.arLocal;
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: getVerticalSize(
            5.00,
          ),
          width: getHorizontalSize(
            80.00,
          ),
          margin: getMargin(
            left: 24,
            top: 10,
            right: 24,
          ),
          decoration: BoxDecoration(
            color: ColorConstant.gray400,
            borderRadius: BorderRadius.circular(
              getHorizontalSize(
                2.50,
              ),
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 24,
            top: 12,
            right: 24,
          ),
          child: Text(
            "Select Language",
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
        Padding(
          padding: getPadding(
            left: 24,
            top: 32,
            right: 24,
            bottom: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(7),
                onTap: () async {
                  setState(() async {
                    await context.setLocale(Locale("en"));
                  });
                },
                child: Container(
                  padding: getPadding(
                    left: 30,
                    top: 13,
                    right: 31,
                    bottom: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isRtl ? ColorConstant.red100 : ColorConstant.redA400,
                    borderRadius: BorderRadius.only(
                      topLeft: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                      bottomLeft: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                      bottomRight: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            ),
                      topRight: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            ),
                    ),
                  ),
                  child: Text(
                    "English",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: isRtl
                          ? ColorConstant.redA400
                          : ColorConstant.whiteA700,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1.00,
                    ),
                  ),
                ),
              ),
              InkWell(
                borderRadius: BorderRadius.circular(7),
                onTap: () async {
                  setState(() async {
                    await context.setLocale(Locale("ar"));
                  });
                },
                child: Container(
                  padding: getPadding(
                    left: 30,
                    top: 13,
                    right: 31,
                    bottom: 12,
                  ),
                  decoration: BoxDecoration(
                    color: isRtl ? ColorConstant.redA400 : ColorConstant.red100,
                    borderRadius: BorderRadius.only(
                      topLeft: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            ),
                      bottomLeft: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            ),
                      bottomRight: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                      topRight: isRtl
                          ? Radius.circular(
                              getHorizontalSize(
                                0.00,
                              ),
                            )
                          : Radius.circular(
                              getHorizontalSize(
                                7.00,
                              ),
                            ),
                    ),
                  ),
                  child: Text(
                    "العربية",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: isRtl
                          ? ColorConstant.whiteA700
                          : ColorConstant.redA400,
                      fontSize: getFontSize(
                        14,
                      ),
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      height: 1.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
