import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './shared/providers/name_notifier.dart';
import './routes.dart';
import './modules/auth/auth_screen.dart';
<<<<<<< HEAD
import './styles/app_theme.dart';
=======
>>>>>>> bc247de85660ba336f6db4357f1a456b4ae58a2f
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
<<<<<<< HEAD
          theme: AppTheme2(),
=======
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
>>>>>>> bc247de85660ba336f6db4357f1a456b4ae58a2f
          routes: Routes.routes,
          home: AuthScreen(),
        ));
  }
}
