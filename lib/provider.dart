import 'package:flutter/material.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final ad = StateProvider<String>((ref){return "username";});

final bottomNavProvider = StateProvider<int>((ref) => 0);