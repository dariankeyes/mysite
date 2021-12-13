import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  '/': (context) => const HomeScreen(),
};