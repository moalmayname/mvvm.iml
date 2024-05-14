

import 'package:flutter/material.dart';
import 'package:mvvm/route/routesName.dart';
import 'package:mvvm/views/homescreen.dart';
import 'package:mvvm/views/posts/loginScreen.dart';

class Routes{

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name){
      case RoutesName.home:
        return MaterialPageRoute(builder:(context)=>Homescreen());
      case RoutesName.log_IN_Scrren:
        return MaterialPageRoute(builder:(context)=>log_in_screen());

      default: return MaterialPageRoute(builder: (context){
        return Scaffold(
          body: Center(child: Text("No route found"),),
        );
      });
    }

  }
}