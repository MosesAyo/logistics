import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './dashboard.dart';

final String logisticsIcon = 'assets/svg/logistics_icon.svg';
final Widget logisticsSvg = SvgPicture.asset(
  logisticsIcon,
  semanticsLabel: ''
);

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return 
    SafeArea(
      child:
        Scaffold(
          body: 
          
            Container(
              padding: EdgeInsets.all(15),
              child: 
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Logistics", style: TextStyle(color: Color(0xFFEF5B25), fontSize: 20, fontWeight: FontWeight.bold ), ),
                    Container(
                      margin: EdgeInsets.only(top: 20, bottom: 20 ),
                      child: Center(
                        child: logisticsSvg
                      )
                    ),

                    Text("Email address", style:TextStyle(color: Color(0xFFE3DBDB)) ),
                    SizedBox(height: 5),
                    TextField(
                      decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE3DBDB), width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE3DBDB), width: 1.0),
                          ),
                          hintText: '',
                      ),
                    ),
                    SizedBox(height: 20),
                    Text("Password", style:TextStyle(color: Color(0xFFE3DBDB)) ),
                    SizedBox(height: 5),
                    TextField(
                      obscureText: true,
                      decoration: new InputDecoration(
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE3DBDB), width: 1.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFE3DBDB), width: 1.0),
                          ),
                          hintText: '',
                      ),
                    ),
                    
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      width: double.infinity,
                      height: 50,
                      child:
                        FlatButton(
                          onPressed: (){
                            Navigator.push(context, PageRouteBuilder(
                              opaque: false,
                              pageBuilder: (BuildContext context, _, __) {
                                return Dashboard();
                              },
                              transitionsBuilder: (context, animation, anotherAnimation, child) {
                                return  SlideTransition(
                                          position: Tween(
                                                  begin: Offset(1.0, 0.0),
                                                  end: Offset(0.0, 0.0))
                                              .animate(animation),
                                          child: child,
                                      );
                              }
                            ));
                          },
                          color: Color(0xFFEF5B25),
                          child: Text("Sign in"),
                          )
                    )
                  ],),
              )
      )
    );
  }
}