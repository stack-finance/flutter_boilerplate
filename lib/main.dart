import 'dart:io';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
// Custom imports
import 'package:flutter_boilerplate/modules/auth/auth_screen.dart';
import 'package:flutter_boilerplate/routes.dart';
import 'package:flutter_boilerplate/shared/providers/name_notifier.dart';
import 'package:flutter_boilerplate/shared/services/http_service.dart';
import 'package:flutter_boilerplate/styles/index.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ClassName()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: themeData,
          routes: Routes.routes,
          home: AuthScreen(),
        ));
  }
}
