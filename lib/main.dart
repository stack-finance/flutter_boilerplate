import 'package:flutter/material.dart';
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
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          routes: Routes.routes,
          home: AuthScreen(),
        ));
  }
}
