import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'homepage.dart';
import 'loginpage.dart';
import 'routers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Insta Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black38),
      ),
      routerConfig: goRoute,
    );
  }
}


