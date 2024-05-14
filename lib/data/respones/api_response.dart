import 'package:flutter/cupertino.dart';
import 'package:mvvm/data/respones/status.dart';


class ApiResponse<T>{
  status? Status ;
  T? data;
  String? message;
  ApiResponse(this.Status,this.data,this.message);
  ApiResponse.loading(): Status = status.loading;
  ApiResponse.Completed(): Status = status.completed;
  ApiResponse.Erorr(): Status = status.error;

  String tostring(){
    return"($Status \n $message \n $data)";

  }



}