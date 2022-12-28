import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/screens/home_screen.dart';

import 'utils/routes.dart';

void main() {
  runApp(const WallPaperApp());
}

class WallPaperApp extends StatelessWidget {
  const WallPaperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      getPages: Routes.pages,
    );
  }
}
