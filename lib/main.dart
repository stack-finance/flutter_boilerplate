import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/styles/app_theme.dart';
import 'package:provider/provider.dart';
import './shared/providers/name_notifier.dart';
import './routes.dart';
import './modules/auth/auth_screen.dart';
import './shared/data/sharedPreference/sharedPreference.dart';

void main() => runApp(MyApp());

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
          theme: AppTheme.lighttheme,
          darkTheme: AppTheme.darktheme,
          routes: Routes.routes,
          home: AuthScreen(),
        ));
  }
}
