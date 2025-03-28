import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/data/genres.dart';
import 'package:movia/widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class GenreItemWidget extends StatefulWidget {
  int index;
  GenreItemWidget({required this.index});

  @override
  State<GenreItemWidget> createState() => _GenreItemWidgetState();
}

class _GenreItemWidgetState extends State<GenreItemWidget> {
 bool checkBoxVal=false;

  @override
  Widget build(BuildContext context) {

    return    InkWell(
      borderRadius: BorderRadius.circular(7),
      onTap: (){
          setState(() {
                            checkBoxVal=!checkBoxVal;
                          
                          });
      },
      child: Container(
        height: getVerticalSize(
          62.00,
        ),
        width: getHorizontalSize(
          152.00,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7)
        ),
      
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  7.00,
                ),
              ),
              child: CommonImageView(
                imagePath: genreList[widget.index].img,
                height: getVerticalSize(
                  62.00,
                ),
                width: getHorizontalSize(
                  152.00,
                ),
                fit: BoxFit.cover,
              ),
            ),
         Container(
          height: getVerticalSize(
          62.00,
        ),
        width: getHorizontalSize(
          152.00,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(0.5),
            Colors.black.withOpacity(0.1),

          ])
        ),
         ),
         
         
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: CustomRadioButton(
                    text: genreList[widget.index].name,
                    iconSize: 20,
                    value: checkBoxVal,
                    
                
                    onChange: (value) {
                      setState(() {
                        checkBoxVal=!checkBoxVal;
                      
                      });
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
         
  }
}
