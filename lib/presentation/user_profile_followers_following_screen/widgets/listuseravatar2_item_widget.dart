import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/widgets/custom_button.dart';
import 'package:movia/widgets/spacing.dart';

// ignore: must_be_immutable
class Listuseravatar2ItemWidget extends StatefulWidget {
  int index;
  Listuseravatar2ItemWidget({
    required this.index
  });

  @override
  State<Listuseravatar2ItemWidget> createState() => _Listuseravatar2ItemWidgetState();
}

class _Listuseravatar2ItemWidgetState extends State<Listuseravatar2ItemWidget> {
  bool isFollowing=false;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Padding(
      padding: getPadding(
        top: 5.0,
        bottom: 5.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  getHorizontalSize(
                    23.00,
                  ),
                ),
                child: CommonImageView(
                  imagePath: ImageConstant.imgUseravatar76X76,
                  height: getSize(
                    46.00,
                  ),
                  width: getSize(
                    46.00,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              HorizontalSpace(width: 15),
              Padding(
                padding: getPadding(
                 
                  top: 7,
                  bottom: 3,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sophia Taylor",
                      overflow: TextOverflow.ellipsis,
                      textAlign:  TextAlign.start,
                      style: TextStyle(
                        
                        fontSize: getFontSize(
                          13,
                        ),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        height: 1.00,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                        right: 10,
                      ),
                      child: Text(
                        "@s_taylor",
                        overflow: TextOverflow.ellipsis,
                        textAlign:  TextAlign.start,
                        style: TextStyle(
                          color: ColorConstant.gray600,
                          fontSize: getFontSize(
                            12,
                          ),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.24,
                          height: 1.00,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          CustomButton(isDark:isDark,
            width: 100,
            text:isFollowing? "Following":'Follow',
            margin: getMargin(
            
              top: 8,
              bottom: 8,
            ),
            onTap: (){
              setState(() {
                isFollowing=true;
              });
            },
            padding: ButtonPadding.PaddingAll7,
            variant:isFollowing? ButtonVariant.FillRedA400:ButtonVariant.FillGray200,
            fontStyle:isFollowing? ButtonFontStyle.SFProDisplayRegular13:
            ButtonFontStyle.SFProDisplayRegular13Gray900,
          ),
        ],
      ),
    );
  }
}
