

import 'package:flutter/cupertino.dart';
import 'package:mvvm/repositories/repostray.dart';
import 'package:mvvm/utils/utils.dart';

class AuthViewModel with ChangeNotifier{

  final _myRepo =AuthRepo();
  Future<void> loginApi(dynamic data,BuildContext context) async{

    _myRepo.loginApi(data).then((value) {

      Utils().successFlusBar(context, "Success", "Welcome");

    }).onError((error, stackTrace) {
      Utils().showerorrFlusBar(context, "Error", error.toString());
    });
  }



}