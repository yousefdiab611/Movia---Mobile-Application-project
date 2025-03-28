import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../data/country.dart';
import '../../widgets/custom_radio_button.dart';

// ignore: must_be_immutable
class CountryListItem extends StatefulWidget {
  int index;
 CountryListItem({required this.index});

  @override
  State<CountryListItem> createState() => _CountryListItemState();
}

class _CountryListItemState extends State<CountryListItem> {
  bool checkBoxVal=false;
  @override

  Widget build(BuildContext context) {
    return InkWell(
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
                       
                          child: Stack(
                            alignment: Alignment.centerLeft,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      7.00,
                                    ),
                                  ),
                                  child: CommonImageView(
                                    imagePath:countryList[widget.index].img,
                                    height: getVerticalSize(
                                      62.00,
                                    ),
                                    width: getHorizontalSize(
                                      152.00,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
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
         
                              Align(
                                alignment: Alignment.centerLeft,
                                child: CustomRadioButton(
                                  text: countryList[widget.index].name,
                                  iconSize: 20,
                                  value: checkBoxVal,
                                 
                                  margin: getMargin(
                                    left: 20,
                                    top: 21,
                                    right: 20,
                                    bottom: 21,
                                  ),
                                  onChange: (value) {
                                    setState(() {
                                      checkBoxVal=!checkBoxVal;
                                    });
                                   
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
    );
                     
    
  }
}