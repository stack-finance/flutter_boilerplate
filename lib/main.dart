import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './modules/auth/auth_screen.dart';
import './routes.dart';
import './styles/app_theme.dart';
import 'shared/providers/name_notifier.dart';
import 'shared/services/http_service.dart';

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
          theme: AppTheme2(),
          routes: Routes.routes,
          home: AuthScreen(),
        ));
  }
}
