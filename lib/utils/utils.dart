
import 'package:another_flushbar/flushbar.dart';

import 'package:flutter/material.dart';

class Appcolor{
  static Color hintextcolor = Colors.lightBlueAccent;
  static Color ButtonCollor = Colors.lightBlueAccent;
  static Color iconColor = Colors.lightBlueAccent;
  static Color buttonTextColor= Colors.white60;
  static Color FlushBarErroeColor = Colors.red;
  static Color FlushBarSuccessColor = Colors.green;



}
class Utils {
  void onChangeFoucsNode(BuildContext context, currentFoucsNode, nextFoucsNode){
    currentFoucsNode.unfocus;
    FocusScope.of(context).requestFocus(nextFoucsNode);
  }
  void showerorrFlusBar(BuildContext context, String title, String message){
    Flushbar(
      title: title,
      message: message,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: EdgeInsets.all(15),
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Appcolor.FlushBarErroeColor ,
      positionOffset: 20,
      borderRadius: BorderRadius.circular(25),
      icon: Icon(Icons.error_outline),
    ).show(context);


  }


  void successFlusBar(BuildContext context, String title, String message){
    Flushbar(
      title: title,
      message: message,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      padding: EdgeInsets.all(15),
      duration: Duration(seconds: 3),
      flushbarPosition: FlushbarPosition.TOP,
      backgroundColor: Appcolor.FlushBarSuccessColor ,
      positionOffset: 20,
      borderRadius: BorderRadius.circular(25),
      icon: Icon(Icons.error_outline),
    ).show(context);


  }
}