import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UserMenu{

  userMenu(BuildContext context) 
        {
          Widget alert = 
          Container(
            child: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onVerticalDragStart: (details){
                Navigator.pop(context);
              },
              onHorizontalDragStart: (details){
                Navigator.pop(context);
              },
              onTap: (){
                Navigator.pop(context);
              },
                child:
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 56, right: 20),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 50,
                              width: 200,
                              child: FlatButton(
                                onPressed: (){
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context,'/pending');
                                },
                                child: Container(
                                  width: 200,
                                  child:
                                    Text("Pending orders", style: TextStyle(color: Colors.white)),
                                )
                              )
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide( //                   <--- left side
                                    color: Color(0x5FD3D3D3),
                                    width: 1.0,
                                  ),
                                  top: BorderSide( //                    <--- top side
                                    color: Color(0x5FD3D3D3),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 200,
                              child: FlatButton(
                                onPressed: (){},
                                child: Container(
                                  width: 200,
                                  child:
                                    Text("Ongoing orders", style: TextStyle(color: Colors.white)),
                                ) 
                              )
                            ),
                            Container(
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide( //                   <--- left side
                                    color: Color(0x5FD3D3D3),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              height: 50,
                              width: 200,
                              child: FlatButton(
                                onPressed: (){},
                                child: Container(
                                  width: 200,
                                  child:Text("Delivered orders", style: TextStyle(color: Colors.white)),
                                )
                              )
                            ),
                            Container(
                              height: 50,
                              width: 200,
                              child: FlatButton(
                                onPressed: (){},
                                child:
                                Container(
                                  width: 200,
                                  child:
                                    Text("Canceled orders", style: TextStyle(color: Colors.white)),
                                ) 
                              )
                            )
                          ],
                        )
                      )
                    ],
                  )
              ),
          );


          showDialog(
            barrierDismissible: true,
            barrierColor: Colors.transparent,
            context: context,
            builder: (BuildContext context) {
              return alert;
            },
          );
        }
}