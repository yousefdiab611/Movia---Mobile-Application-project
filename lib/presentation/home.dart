import 'package:flutter/material.dart';
import 'package:movia/presentation/activity_page/activity_page.dart';
import 'package:movia/presentation/home_page/home_page.dart';
import 'package:movia/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:movia/presentation/search_screen/search_screen.dart';
import '../core/app_export.dart';


class Home extends StatefulWidget {
  static String id="HomeScreen";
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
   List<Widget> screens=[
    HomePage(),
    SearchScreen(),
  ActivityPage(),
   MyProfileScreen(),
    ];

  int selectedNavBarIndex=0;
  
  bool pop=false;
  @override
  Widget build(BuildContext context) {
    bool isDark =Theme.of(context).brightness==Brightness.dark;
    return Scaffold(
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor:isDark?ColorConstant.darkBg: Colors.white,
      type: BottomNavigationBarType.fixed,
     showSelectedLabels: true,
     showUnselectedLabels: true,
      
      selectedItemColor:ColorConstant.redA400 ,
      unselectedItemColor:isDark?ColorConstant.gray500:ColorConstant.gray600 ,
  
      
        selectedLabelStyle: TextStyle(
          color: ColorConstant.redA400 , 
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Plus Jakarta Sans',
          fontWeight: FontWeight.w900,
        ),
        unselectedLabelStyle: TextStyle(
        
          fontSize: getFontSize(
            12,
          ),
          fontFamily: ' Plus Jakarta Sans',
          fontWeight: FontWeight.w400,
        ),
        currentIndex: selectedNavBarIndex,
        onTap: (index){
          setState(() {
            selectedNavBarIndex=index;
          });
         
        },
        items: [

          BottomNavigationBarItem(
          
            icon: Image.asset(ImageConstant.navBar1,
            width: getHorizontalSize(24),
            height: getVerticalSize(24),
             ),
            activeIcon: Image.asset(
              ImageConstant.navBar1,
            color:ColorConstant.redA400 ,
             width: getHorizontalSize(24),
            height: getVerticalSize(24),
            ),
            label: "Home",
            
      
          ),
          BottomNavigationBarItem(icon: Image.asset(ImageConstant.navBar2,
           width: getHorizontalSize(24),
            height: getVerticalSize(24),
         color:   isDark?ColorConstant.gray500:ColorConstant.gray600 ,
           ),
              activeIcon:Image.asset(ImageConstant.navBar2,
               width: getHorizontalSize(24),
            height: getVerticalSize(24),
             color:ColorConstant.redA400 ,
            ) ,
            
              label: "Search"
          ),
          BottomNavigationBarItem(icon: Image.asset(ImageConstant.navBar3,
           width: getHorizontalSize(24),
            height: getVerticalSize(24), ),
              activeIcon: Image.asset(ImageConstant.navBar3,
               color:ColorConstant.redA400 ,
               width: getHorizontalSize(24),
            height: getVerticalSize(24),),
              label: "Activity"),

          BottomNavigationBarItem(icon: Image.asset(ImageConstant.navBar4,

           width: getHorizontalSize(24),
            height: getVerticalSize(24),
           ),
              activeIcon: Image.asset(ImageConstant.navBar4,
               color:ColorConstant.redA400 ,
              
               width: getHorizontalSize(24),
            height: getVerticalSize(24),),
              label: "Profile"),],

      ),
      body:WillPopScope(
        onWillPop: ()async {
        return  (await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              content: Text(
               "Are you sure",
                style: TextStyle(fontSize: 13,fontFamily: " Plus Jakarta Sans"),
              ),
              title: Text(
               "Do you want to exit the app?",
                style: TextStyle(fontSize: 13,fontFamily: " Plus Jakarta Sans"),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(false);
                   
                  },
                  child: Text(
                    "No",
                    style: TextStyle(
                      color: ColorConstant.redA400 ,
                       fontSize: 13,fontFamily: " Plus Jakarta Sans"),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop(true);
                   
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.red, fontSize: 13,fontFamily: " Plus Jakarta Sans"),
                  ),
                ),
              ],
            ))
        )??
        
         false;
      
        },
        
        child: screens[selectedNavBarIndex]) ,
      
    );
  }
}