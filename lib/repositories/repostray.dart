import 'package:mvvm/data/network/base_app_service.dart';
import 'package:mvvm/data/network/network_api_services.dart';
import 'package:mvvm/resource/app_url.dart';

class AuthRepo {
  final BaseApiService _apiService = NetWorkinApiService();
  Future<dynamic> loginApi(dynamic data) async {
    try{
      dynamic response=
       await _apiService.getPostApirespones(ApiUrl.loginEndpointUrl, data);

      return response;
    }catch(e){
      rethrow;
    }

  }

}