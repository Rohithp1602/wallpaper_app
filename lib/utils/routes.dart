import 'package:get/get.dart';
import 'package:wallpaper_app/screens/home_screen.dart';

class Routes {
  //main

  static const String homeScreen = "/home_screen";

  static List<GetPage> pages = [
    //main
    GetPage(name: homeScreen, page: () => const HomeScreen()),
  ];
}
