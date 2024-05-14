import 'dart:async';

import 'package:flutter/material.dart';
class AppException implements Exception {
  final  _mesaage;
  AppException(this._mesaage);

  String toString(){
    return "$_mesaage";
  }
}
class FetchDataExcep extends AppException{
  FetchDataExcep([String? mesagge]): super("erorr During commiunction");


}
class BadRequsetExcep extends AppException{
  BadRequsetExcep([String? mesagge]): super("invaild Requset");


}

class NonAthourizedExcep extends AppException{
  NonAthourizedExcep([String? mesagge]): super("Unathouruzed Requset");


}
class InvalidinputExcep extends AppException{
  InvalidinputExcep([String? mesagge]): super("Invalid Input");


}


