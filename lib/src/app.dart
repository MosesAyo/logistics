import 'package:flutter/material.dart';
// import 'ui/movie_list.dart';
import 'ui/login.dart';
import 'ui/pending_orders.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return 
    MaterialApp(
        title: 'Logistics',
        theme: ThemeData.dark(),
        initialRoute: '/',
        routes: {
          '/': (context)=> Login(),
          '/pending': (context)=>PendingOrders(),
          '/login': (context)=>Login(),
        },
      );
  }
}