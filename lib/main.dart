import 'package:flutter/material.dart';
import 'package:ui_dynamic/screens/dynamic_ui_page.dart';
import 'package:ui_dynamic/screens/home_screen.dart';

import 'screens/static_ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    routes: {
        'static':(context)=> StaticUiPage(),
        '/':(context)=> HomeScreen(),
      'dynamic':(context)=>DynamicUiPage(),
    },
    );
  }
}


