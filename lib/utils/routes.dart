import 'package:get/get.dart';
import 'package:wallpaper_app/screens/auto_wallpaper_settings/auto_wallpaper_settings_screen.dart';
import 'package:wallpaper_app/screens/get_pro/get_pro_account_screen.dart';
import 'package:wallpaper_app/screens/home_screen.dart';
import 'package:wallpaper_app/screens/live_note_working/live_not_working_screen.dart';
import 'package:wallpaper_app/screens/my_download/my_download_screen.dart';
import 'package:wallpaper_app/screens/my_favorite/my_favourit_screen.dart';

class Routes {
  //home

  static const String homeScreen = "/home_screen";

  //main
  static const String myFavoriteScreen = "/my_favorite_screen";
  static const String myDownloadScreen = "/my_download_screen";
  static const String autoWallpaperScreen = "/auto_wallpaper_screen";
  static const String liveWallpaperNotSetScreen =
      "/live_wallpaper_not_set_screen";
  static const String getProScreen = "/get_pro_screen";

  static List<GetPage> pages = [
    //home
    GetPage(name: homeScreen, page: () => const HomeScreen()),

    //main
    GetPage(name: myFavoriteScreen, page: () => const MyFavouritScreen()),
    GetPage(name: myDownloadScreen, page: () => const MyDownloadScreen()),
    GetPage(name: autoWallpaperScreen, page: () => const AutoWallpaperScreen()),
    GetPage(
        name: liveWallpaperNotSetScreen,
        page: () => const LiveNotWorkingScreen()),
    GetPage(name: getProScreen, page: () => const GetProAccount()),
  ];
}
