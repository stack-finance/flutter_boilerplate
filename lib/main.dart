import 'package:flutter/material.dart';

import './routes.dart';
import './modules/auth/auth_screen.dart';
import './shared/models/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: Routes.routes,
      home: AuthScreen(),
    );
  }
}
