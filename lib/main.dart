import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/config/app_router.dart';
import 'package:flutter_food_delivery_app/screen/screens.dart';
import 'config/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery',
      theme: theme(ThemeData()),
      onGenerateRoute: AppRouter.onGenerateRoute,
      initialRoute: LocationScreen.routeName,
    );
  }
}

