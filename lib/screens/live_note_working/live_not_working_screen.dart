import 'package:flutter/material.dart';
import 'package:wallpaper_app/utils/extentions.dart';

class LiveNotWorkingScreen extends StatelessWidget {
  const LiveNotWorkingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Home".appTextStyle(size: 20,fontWeight: FontWeight.w400),
      ),
    );
  }
}
