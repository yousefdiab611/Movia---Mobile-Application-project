import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../../widgets/spacing.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';

// ignore_for_file: must_be_immutable
class UserProfileEditReviewPage extends StatefulWidget {
  @override
  State<UserProfileEditReviewPage> createState() => _UserProfileEditReviewPageState();
}

class _UserProfileEditReviewPageState extends State<UserProfileEditReviewPage> {
  TextEditingController textEditingController= TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    textEditingController.text=' Cruella is often fun to watch, but its cavalier reversal of its core character cheapens the very idea of a corrective narrative. It takes a quintessential villain and nuances her character into oblivion.';
  }
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Container(
    
      decoration: BoxDecoration(
        color:isDark?ColorConstant.darkContainer: ColorConstant.gray200,
        borderRadius: BorderRadius.circular(
          getHorizontalSize(
            7.00,
          ),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
        
         
          Container(
            margin: getMargin(
              left: 20,
              right: 20,
              top: 20
              
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                          padding: getPadding(
                            bottom: 1,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                16.00,
                              ),
                            ),
                            child: CommonImageView(
                              imagePath: ImageConstant.imgUseravatar32X32,
                              height: getSize(
                                32.00,
                              ),
                              width: getSize(
                                32.00,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                     
                HorizontalSpace(width: 15),
                Expanded(
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.top,
                    textAlign: TextAlign.start,
                    autofocus: true,
                     controller:textEditingController ,
                  maxLines: null,
                  style: TextStyle(
                     fontFamily: 'SF Pro Display',

                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    filled: false,
                    contentPadding:EdgeInsets.all( 0)
                  )),
                  
                  )
                
            
            
            
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 10,
              top: 24,
              right: 10,
              bottom: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                RatingBar(
                  initialRating: 4,
                  minRating: 0,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemSize: getVerticalSize(
                    18.00,
                  ),
                  itemCount: 5,
                  updateOnDrag: true,
                  onRatingUpdate: (rating) {},
                  
                  ratingWidget: RatingWidget(
     full: Image.asset(ImageConstant.start),
     half: Image.asset(ImageConstant.start),
     empty:Image.asset(ImageConstant.startBorder),
   ),
                ),
              
             Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(100),

                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Icon(Icons.clear_rounded,
                  size: 20,
                  color:isDark?ColorConstant.gray500: ColorConstant.gray600,),
                ),
                HorizontalSpace(width: 15),
                InkWell(
                  borderRadius: BorderRadius.circular(100),

                  onTap: (){
                    Navigator.pop(context);

                  },
                  child: Image.asset(ImageConstant.send,
                  height: getVerticalSize(30),
                  width: getHorizontalSize(30),
                  ),
                )
              ],
             )
             
              ],
            ),
          ),
        ],
      ),
    );
  
  
  }
}
