import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/custom_icon_button.dart';
import 'package:movia/widgets/custom_text_form_field.dart';
import 'package:movia/widgets/spacing.dart';
import '../../widgets/custom_drop_down.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  List<String> dropdownItemList = ["Male", "Female"];
  Object dropDownVal = 'Male';
  @override
  Widget build(BuildContext context) {
    bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height - 30,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: getPadding(
                          left: 20,
                          top: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            BkBtn(),
                            Padding(
                              padding: getPadding(
                                top: 6,
                                bottom: 9,
                              ),
                              child: Text(
                                "Edit Profile",
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
                            HorizontalSpace(width: 36)
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getSize(
                          90.00,
                        ),
                        width: getSize(
                          90.00,
                        ),
                        margin: getMargin(
                          left: 24,
                          top: 32,
                          right: 24,
                        ),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                  getHorizontalSize(
                                    45.00,
                                  ),
                                ),
                                child: CommonImageView(
                                  imagePath: ImageConstant.imgUseravatar76X76,
                                  height: getSize(
                                    90.00,
                                  ),
                                  width: getSize(
                                    90.00,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            CustomIconButton(
                              height: 35,
                              width: 35,
                              margin: getMargin(
                                left: 10,
                                top: 10,
                              ),
                              alignment: Alignment.bottomRight,
                              child: CommonImageView(
                                svgPath: ImageConstant.imgVolume,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 42,
                        right: 24,
                      ),
                      child: Text(
                        "Full Name",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      isDark: isDark,
                      width: size.width,
                      focusNode: FocusNode(),
                      hintText: "Sophia Taylor",
                      margin: getMargin(
                        left: 24,
                        top: 5,
                        right: 24,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          all: 10,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgUser,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          24.00,
                        ),
                        minHeight: getSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 23,
                        right: 24,
                      ),
                      child: Text(
                        "Username",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      isDark: isDark,
                      width: size.width,
                      focusNode: FocusNode(),
                      hintText: "s_taylor",
                      margin: getMargin(
                        left: 24,
                        top: 4,
                        right: 24,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          all: 10,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgUser24X24,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          24.00,
                        ),
                        minHeight: getSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 22,
                        right: 24,
                      ),
                      child: Text(
                        "Email",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    CustomTextFormField(
                      isDark: isDark,
                      width: size.width,
                      focusNode: FocusNode(),
                      hintText: "s.taylor@gmail.com",
                      margin: getMargin(
                        left: 24,
                        top: 5,
                        right: 24,
                      ),
                      prefix: Container(
                        margin: getMargin(
                          all: 10,
                        ),
                        child: CommonImageView(
                          svgPath: ImageConstant.imgCheckmark,
                        ),
                      ),
                      prefixConstraints: BoxConstraints(
                        minWidth: getSize(
                          24.00,
                        ),
                        minHeight: getSize(
                          24.00,
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 24,
                        top: 22,
                        right: 24,
                      ),
                      child: Text(
                        "Gender",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: getFontSize(
                            13,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          height: 1.00,
                        ),
                      ),
                    ),
                    VerticalSpace(height: 5),
                    Padding(
                      padding: getPadding(left: 24, right: 24),
                      child: SizedBox(
                        height: getVerticalSize(70),
                        child: CustomDropDown(
                          isDark: isDark,
                          width: size.width,
                          focusNode: FocusNode(),
                          hintText: "Gender",
                          value: dropDownVal,
                          icon: Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: ColorConstant.gray60099,
                            size: 15,
                          ),
                          items: dropdownItemList,
                          fontStyle: DropDownFontStyle.PlusJakartaSansMedium14,
                          onChanged: (value) {
                            setState(() {
                              dropDownVal = value;
                            });
                          },
                          alignment: Alignment.center,
                          prefixConstraints: BoxConstraints(
                            minWidth: getSize(
                              20.00,
                            ),
                            minHeight: getSize(
                              20.00,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomButton(isDark:isDark,
                  width: size.width,
                  text: "Save Change",
                  margin: getMargin(
                    left: 24,
                    top: 10,
                    right: 24,
                    bottom: 20,
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
