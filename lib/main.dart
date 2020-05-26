import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './shared/providers/name_notifier.dart';
import './routes.dart';
import './modules/auth/auth_screen.dart';
<<<<<<< HEAD
import './shared/models/index.dart';
=======
import './shared/widgets/index.dart';
>>>>>>> widgets

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
        routes: Routes.routes,
        home: AuthScreen(),
      ),
    );
  }
}
