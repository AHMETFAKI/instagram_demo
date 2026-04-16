import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:instagram_demo/signuppage.dart';
import 'loginpage.dart';
import 'chatpage.dart';
import 'homepage.dart';
import 'mainpage.dart';
import 'messagepage.dart';
import 'profilepage.dart';
import 'reelspage.dart';
import 'searchpage.dart';

final GoRouter goRoute = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
        path: "/",
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
        path: "/chatpage",
        builder: (context, state) => ChatPage(name: "mehmet")
    ),
    GoRoute(
      path: "/homepage",
      builder: (context, state) => MyHomePage(),
    ),
    GoRoute(
      path: "/signuppage",
      builder: (context, state) => SignUpPage(),
    )
  ]
);