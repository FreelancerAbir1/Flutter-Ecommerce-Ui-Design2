import 'package:flutter/material.dart';
import 'package:flutter_ecommerce2/routes.dart';

import '../constant.dart';
import 'Home Screen/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: route,
      initialRoute: HomeScreen.routeName,
      title: 'Flutter Demo',
      theme: customTheme(),
      // home: const HomeScreen(),
    );
  }
}
