import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:ticket_app/screens/bottom_navigation/bottm_nav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: BottomNavigation(),
    );
  }
}
