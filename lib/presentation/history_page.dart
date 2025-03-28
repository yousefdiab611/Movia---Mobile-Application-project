import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:movia/core/app_export.dart';
import 'package:movia/presentation/history_downloaded_page/history_downloaded_page.dart';
import 'package:movia/presentation/history_watching_page/history_watching_page.dart';
import 'package:movia/widgets/bkbtn.dart';
import 'package:movia/widgets/spacing.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  State<HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage>
    with SingleTickerProviderStateMixin {
TabController? tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    tabController!.dispose();
  }
  @override
  Widget build(BuildContext context) {
    bool isRtl = context.locale==Constants.arLocal;
    return Scaffold(
      body: SafeArea(child: 
      Column(
        children: [
          Padding(
            padding: getPadding(
            left: 20,
            right: 20,
            top: 20,
            bottom: 10
            
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BkBtn(),
              Text('History',
              style: TextStyle(
                            
                            fontSize: getFontSize(
                              20,
                            ),
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w700,
                            height: 1.00,
                          ),
              
              )
          , HorizontalSpace(width: 36),
            ],
          ),
          
          ),
       VerticalSpace(height: 20),
       Container(
        height: getVerticalSize(40),
        margin: getMargin(
          left: 24,
          right: 24
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7),
          border: Border.all(color: ColorConstant.redA400)
        ),
         child: TabBar(
        
          controller: tabController,
          onTap: (index){
            setState(() {
              
            });

          },
          indicator: BoxDecoration(
            color: ColorConstant.redA400,
            borderRadius: BorderRadius.only(
              topLeft:
             tabController!.index==0?
              isRtl?Radius.circular(0):Radius.circular(7):
              isRtl?Radius.circular(7):Radius.circular(0)
              ,
              topRight:
              tabController!.index==0?
             isRtl?Radius.circular(7):Radius.circular(0):
             isRtl?Radius.circular(0):Radius.circular(7)
              ,
             bottomLeft:
              tabController!.index==0? 
              isRtl?Radius.circular(0):Radius.circular(7):
             
              isRtl?Radius.circular(7):Radius.circular(0)
              ,
              bottomRight:
               tabController!.index==0?
              isRtl?Radius.circular(7):Radius.circular(0):
             
              isRtl?Radius.circular(0):Radius.circular(7)
              ,
            )
          ),
          
          
          labelStyle:TextStyle(
                                          
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
                                          unselectedLabelStyle: TextStyle(
                                          
                                            fontSize: getFontSize(
                                              14,
                                            ),
                                            fontFamily: 'SF Pro Display',
                                            fontWeight: FontWeight.w500,
                                            height: 1.00,
                                          ),
     labelColor: ColorConstant.whiteA700,
     unselectedLabelColor:ColorConstant.redA400,
     
          tabs: [
          Tab(text: 'Watching',),
          Tab(text: 'Downloaded',),
         ]),
       )
    ,   VerticalSpace(height: 20),
    Expanded(
      child: TabBarView(
        controller: tabController,
        children:[
          HistoryWatchingPage(),
          HistoryDownloadedPage(),
        ] ),
    )
      
        ],
      )
      ),
    );
    
  }
}