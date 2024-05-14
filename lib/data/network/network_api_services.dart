import 'dart:convert';
import 'dart:io';

import 'package:mvvm/data/network/base_app_service.dart';

import 'package:http/http.dart' as http;

import '../app_exceptions.dart';
class NetWorkinApiService extends BaseApiService{
  @override
  Future getApirespones(String url) async {
    dynamic responsejson;
    try{

      final respones= await http.get(Uri.parse(url)).timeout(const Duration(seconds: 10));
      responsejson= returnresponse(respones);

    }on SocketException{
      throw FetchDataExcep("error during cx xcvomminuction ");
    }

  }

  @override
  Future getPostApirespones(String url, dynamic data) async {
    try{
      dynamic responsejson;

      final respones= await http.post(Uri.parse(url),body: data).timeout(const Duration(seconds: 10));
      responsejson= returnresponse(respones);


    }
    on SocketException{
      throw FetchDataExcep("error during comminuction }");
    }

  }



  dynamic returnresponse(http.Response response){
    switch(response.statusCode){
      case 200 :
        dynamic responsejson =jsonDecode(response.body);
        return responsejson;

      case 503: throw NonAthourizedExcep("You Dont have authoriztion to access");

      default:throw FetchDataExcep(
        "erorr while communicating with the service with staus code${response.statusCode}"
      );


    }
  }

}