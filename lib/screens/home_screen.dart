import 'package:flutter/material.dart';
import 'package:wallpaper_app/utils/app_string.dart';
import 'package:wallpaper_app/utils/extentions.dart';

import '../widget/app_drawer.dart';

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
              Center(
                child: Text('Tab 1'),
              ),
              Center(
                child: Text('Tab 2'),
              ),
              Center(
                child: Text('Tab 3'),
              ),
              Center(
                child: Text('Tab 4'),
              ),
              Center(
                child: Text('Tab 5'),
              ),
              Center(
                child: Text('Tab 6'),
              ),
              Center(
                child: Text('Tab 7'),
              ),
            ],
          )),
    );
  }
}
