import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../components/user_menu.dart';
import '../components/bottom_nav.dart';


final Widget menuIcon = SvgPicture.asset(
  "assets/svg/menu_icon.svg",
  semanticsLabel: ''
);


final Color mainColor = Color(0xFFEF5B25);

class Dashboard extends StatefulWidget{
  @override
  _Dashboard createState()=> new _Dashboard();
}

class _Dashboard extends State<Dashboard> {

  UserMenu _menu = new UserMenu();
  final Widget accountIcon = SvgPicture.asset(
    "assets/svg/account_icon.svg",
    semanticsLabel: ''
  );

  Widget dashboradCard(title, value){
    double screenWidth = MediaQuery.of(context).size.width;
    return 
    Container(
      child:
          Stack(
            children: [
              Positioned(
                child:
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(15)
                  ),
                  height: (screenWidth * 0.5)-60,
                  width: (screenWidth * 0.5)-30,
                  child: Center(
                    child:
                      Text("$title"),
                  )
                  ),
                left: 0.0,
                top: 30.0,
              ),

              Positioned(
                child: 
                  Container(
                    margin: EdgeInsets.only(left: ((screenWidth/2)/2)-35),
                    decoration: BoxDecoration(
                      color: Colors.grey[600],
                      borderRadius: BorderRadius.circular(70)
                    ),
                    height: 70,
                    width: 70,
                    child: Center(
                      child:Text("$value", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold ) ),
                      )
                    ),
                left: 0.0,
              ),
            ],
          ),
    );
  }

  @override
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



    Widget homeContent = Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(15),
            child: 
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey[800]
                      ),
                    child: 
                      Center(
                        child: 
                          Container(
                            height: 40,
                            child: accountIcon,
                          ),
                      ),
                    ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text("John Snow", style: TextStyle(fontSize:18 )),)
              ],)
            ),
            Expanded(
              child:
                GridView.count(
                  // Create a grid with 2 columns. If you change the scrollDirection to
                  // horizontal, this produces 2 rows.
                  crossAxisCount: 2,
                  padding: EdgeInsets.only(top: 20),
                  children: [
                    dashboradCard("Pending orders", "0"),
                    dashboradCard("Ongoing orders", "0"),
                    dashboradCard("Delivered orders", "0"),
                    dashboradCard("Canceled orders", "0"),
                    dashboradCard("Total amount received", "0"),
                    dashboradCard("Subscription plan", "N9000"),
                  ]
                  )
            )
        ],)
      ,);

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              topNav,
              Expanded(
                child: homeContent,
                ),
              BottomNav()
            ],
          )
        ),)
        ,);
  }
}