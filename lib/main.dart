import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/screens/home_screen.dart';
import 'package:wallpaper_app/screens/test.dart';

import 'utils/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const WallPaperApp());
}

class WallPaperApp extends StatelessWidget {
  const WallPaperApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Test(),
      getPages: Routes.pages,
    );
  }
}
