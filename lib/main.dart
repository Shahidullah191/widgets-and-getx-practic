import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'getx_related/screens/dialog_alart_bottom_sheet_theme_change.dart';
import 'getx_related/screens/snacbar_example.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      home: AlartBottomTheme(),
    );
  }
}

