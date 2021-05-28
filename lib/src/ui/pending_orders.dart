import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:logistics/src/components/bottom_nav.dart';
import '../components/user_menu.dart';

class PendingOrders extends StatefulWidget{
  @override
  _PendingOrders createState()=> new _PendingOrders();
}

class _PendingOrders extends State<PendingOrders>{

  UserMenu _menu = new UserMenu();
  final Color mainColor = Color(0xFFEF5B25);
  final Widget menuIcon = SvgPicture.asset(
  "assets/svg/menu_icon.svg",
  semanticsLabel: ''
);

  Widget build(BuildContext context){

    double screenWidth = MediaQuery.of(context).size.width;


    Widget topNav = Container(
      margin: EdgeInsets.all(15),
      width: screenWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Courier", style:TextStyle(color: mainColor, fontSize: 20, fontWeight: FontWeight.bold )),
          GestureDetector(
            onTap: (){
              _menu.userMenu(context);
              },
            child:
              menuIcon
          )
        ],
      )
    );

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              topNav,
              Expanded(
                child: Container(),
                ),
              BottomNav()
            ],
          )
        ),)
      );
  }
}