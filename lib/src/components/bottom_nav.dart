import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNav extends StatefulWidget{
  @override
  _BottomNav createState()=> new _BottomNav();
}

class _BottomNav extends State<BottomNav> with SingleTickerProviderStateMixin{

  TabController tabController;

  @override
  void initState(){
    tabController = TabController(length: 2, vsync: this, initialIndex: 0);
    super.initState();
  }

  final Widget homeIcon = SvgPicture.asset(
  "assets/svg/home_icon.svg",
  semanticsLabel: ''
);

final Widget accountIcon = SvgPicture.asset(
  "assets/svg/account_icon.svg",
  semanticsLabel: ''
);

final Color mainColor = Color(0xFFEF5B25);


  Widget build(BuildContext context){
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 56,
      width: screenWidth,
      color: mainColor,
      child: Center(
        child: 
        TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          indicatorColor: Colors.white,
          isScrollable: false,
          controller: tabController,
          // labelPadding: EdgeInsets.symmetric(horizontal: 100),
                tabs: [
                  Center(child: homeIcon,),
                  Center(child: accountIcon,)
                ]
              )
            )
        );
  }
}