import 'package:flutter/material.dart';
import 'package:wallpaper/wallpaper.dart';
import 'package:wallpaper_app/utils/extentions.dart';

class WallpaperUtils {
  Wallpaper wallpaper = Wallpaper();

  static Future<void> dowloadImage(BuildContext context, String img) async {
    Stream<String>? progressString;
    String res = "";
    progressString = Wallpaper.imageDownloadProgress(img);
    progressString.listen((data) {
      res = data;

      print("DataReceived: " + data);
    }, onDone: () async {
      print("Task Done");
      setHomeScreenWallpaper(context);
    }, onError: (error) {
      showAppSnackBar("Check You Internet Connection");
    });
  }

  static Future<void> setHomeScreenWallpaper(BuildContext context) async {
    String home = "Home Screen";
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    home = await Wallpaper.homeScreen(
        options: RequestSizeOptions.RESIZE_FIT, width: width, height: height);
    showAppSnackBar("Wallpaper Set Successfully");
  }
}
