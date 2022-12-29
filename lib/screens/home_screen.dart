import 'package:flutter/material.dart';
import 'package:wallpaper_app/utils/app_string.dart';
import 'package:wallpaper_app/utils/extentions.dart';

import '../widget/app_drawer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: "Hd Wallpaper"
              .appTextStyle(size: 18, fontWeight: FontWeight.w500),
          elevation: 0.0,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (context) => // Ensure Scaffold is in context
                IconButton(
                    icon: Image.asset(AppIcons.icMenu),
                    onPressed: () => Scaffold.of(context).openDrawer()),
          )),
      drawer: AppDrawer(),
    );
  }
}
