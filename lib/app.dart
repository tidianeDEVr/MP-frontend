import 'package:flutter/material.dart';
import 'package:mouridepro/providers/authentication_provider.dart';
import 'package:mouridepro/providers/posts_provider.dart';
import 'package:mouridepro/route/route_generator.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (context) =>  AuthentificationProvider()),
      ChangeNotifierProvider(create: (context) =>  PostProvider()),
    ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Montserrat'),
        initialRoute: RouteGenerator.splashScreen,
        onGenerateRoute: RouteGenerator.onGeneratedRoute,
      )
    );
  }
}