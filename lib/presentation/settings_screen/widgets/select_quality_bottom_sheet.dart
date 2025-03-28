import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

enum QualityEnum {
 sd,
  hd,
  fullHd,
  fourK,
}

class SelectQualityBottomSheet extends StatefulWidget {
  const SelectQualityBottomSheet({Key? key}) : super(key: key);

  @override
  State<SelectQualityBottomSheet> createState() => _SelectQualityBottomSheetState();
}

class _SelectQualityBottomSheetState extends State<SelectQualityBottomSheet> {
  QualityEnum quality=QualityEnum.fullHd;
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
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
                                          "Select Quality",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign:  TextAlign.start,
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            InkWell(
                                              borderRadius: BorderRadius.circular(7),
                                              onTap: (){
                                                setState(() {
                                                  quality=QualityEnum.sd;
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
                                                  color:quality==QualityEnum.sd?ColorConstant.redA400: ColorConstant.red100,
                                                  borderRadius: BorderRadius.only(
                                                    topLeft:isRtl?Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
                                                    ): Radius.circular(
                                                      getHorizontalSize(
                                                        7.00,
                                                      ),
                                                    ),
                                                    bottomLeft:isRtl?Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
                                                    ): Radius.circular(
                                                      getHorizontalSize(
                                                        7.00,
                                                      ),
                                                    ),
                                                    bottomRight: isRtl?Radius.circular(
                                                      getHorizontalSize(
                                                        7.00,
                                                      ),
                                                    ):Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
                                                      
                                                    ),
                                                    topRight: isRtl?Radius.circular(
                                                      getHorizontalSize(
                                                        7.00,
                                                      ),
                                                    ):Radius.circular(
                                                      getHorizontalSize(
                                                        0.00,
                                                      ),
                                                    ),
                                                  ),
                                                
                                                
                                                ),
                                                child: Text(
                                                  "SD",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:quality==QualityEnum.sd?ColorConstant.whiteA700: ColorConstant.redA400,
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
                                              onTap: (){
                                                setState(() {
                                                  quality=QualityEnum.hd;
                                                });
                                              },
                                              child: Container(
                                                padding: getPadding(
                                                  left: 30,
                                                  top: 13,
                                                  right: 30,
                                                  bottom: 12,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:quality==QualityEnum.hd?ColorConstant.redA400: ColorConstant.red100,
                                                ),
                                                child: Text(
                                                  "HD",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:quality==QualityEnum.hd?ColorConstant.whiteA700: ColorConstant.redA400,
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
                                              onTap: (){
                                                setState(() {
                                                  quality=QualityEnum.fullHd;
                                                });
                                              },
                                              child: Container(
                                                padding: getPadding(
                                                  left: 18,
                                                  top: 13,
                                                  right: 18,
                                                  bottom: 12,
                                                ),
                                                decoration: BoxDecoration(
                                                  color:quality==QualityEnum.fullHd? ColorConstant.redA400:ColorConstant.red100,
                                                ),
                                                child: Text(
                                                  "Full HD",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:quality==QualityEnum.fullHd?
                                                        ColorConstant.whiteA700:ColorConstant.redA400,
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
                                              onTap: (){
                                                setState(() {
                                                  quality=QualityEnum.fourK;
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
                                                  color:quality==QualityEnum.fourK?ColorConstant.redA400: ColorConstant.red100,
                                                   borderRadius: BorderRadius.only(
                                                      topLeft:isRtl?Radius.circular(
                                                        getHorizontalSize(
                                                          7.00,
                                                        ),
                                                      ): Radius.circular(
                                                        getHorizontalSize(
                                                          0.00,
                                                        ),
                                                      ),
                                                      bottomLeft:isRtl?Radius.circular(
                                                        getHorizontalSize(
                                                          7.00,
                                                        ),
                                                      ): Radius.circular(
                                                        getHorizontalSize(
                                                          0.00,
                                                        ),
                                                      ),
                                                      bottomRight: isRtl?Radius.circular(
                                                        getHorizontalSize(
                                                          0.00,
                                                        ),
                                                      ):Radius.circular(
                                                        getHorizontalSize(
                                                          7.00,
                                                        ),
                                                        
                                                      ),
                                                      topRight: isRtl?Radius.circular(
                                                        getHorizontalSize(
                                                          0.00,
                                                        ),
                                                      ):Radius.circular(
                                                        getHorizontalSize(
                                                          7.00,
                                                        ),
                                                      ),
                                                    ),
                                                  
                                                ),
                                                child: Text(
                                                  "4K",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign:  TextAlign.start,
                                                  style: TextStyle(
                                                    color:quality==QualityEnum.fourK?ColorConstant.whiteA700: ColorConstant.redA400,
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