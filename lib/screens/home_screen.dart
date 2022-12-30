import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/category_screen.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/clock_wallpaper.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/exclusive_screen.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/live_wallpaper_screen.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/quotes_wallpaper_screen.dart';
import 'package:wallpaper_app/screens/home_wallpaper_catagory_screens/wallpaper_screen.dart';
import 'package:wallpaper_app/utils/app_string.dart';
import 'package:wallpaper_app/utils/extentions.dart';

import '../widget/app_drawer.dart';
import 'home_wallpaper_catagory_screens/treading_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: Scaffold(
          appBar: AppBar(
              bottom: TabBar(
                  isScrollable: true,
                  unselectedLabelColor: Colors.black,
                  padding: const EdgeInsets.all(5),
                  indicatorColor: Colors.black,
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black),
                  tabs: const [
                    Tab(
                      child: Text('Treading'),
                    ),
                    Tab(
                      child: Text('Exclusive'),
                    ),
                    Tab(
                      child: Text('Live Wallpaper'),
                    ),
                    Tab(
                      child: Text('Wallpaper'),
                    ),
                    Tab(
                      child: Text('Quotes Wallpaper'),
                    ),
                    Tab(
                      child: Text('Clock Wallpaper'),
                    ),
                    Tab(
                      child: Text('Category'),
                    )
                  ]),
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
          drawer: const AppDrawer(),
          body: const TabBarView(
            children: <Widget>[
              TreadingScreen(),
              ExclusiveScreen(),
              LiveWallpaperScreen(),
              WallpaperScreen(),
              QuotesWallpaperScreen(),
              ClockWallpaperScreen(),
              CategoryScreen(),
            ],
          )),
    );
  }
}
