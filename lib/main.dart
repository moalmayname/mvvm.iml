import 'package:mvvm/route/routes.dart';
import 'package:mvvm/route/routesName.dart';

import 'package:flutter/material.dart';
import 'package:mvvm/view_models/auth_viewModel.dart';
import 'package:provider/provider.dart';



main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  return MultiProvider(providers: [
    ChangeNotifierProvider(create: (context)=> AuthViewModel()),
  ],
  child:    MaterialApp(
    initialRoute: RoutesName.log_IN_Scrren,
    onGenerateRoute: Routes.generateRoute,
  ),);
  }
}
