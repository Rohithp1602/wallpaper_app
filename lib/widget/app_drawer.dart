import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wallpaper_app/utils/extentions.dart';
import 'package:wallpaper_app/utils/routes.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 50, left: 20),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          height: 70,
                          width: 70,
                          color: Colors.red,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        "Hd Wallpaper".appTextStyle(
                            size: 15, fontWeight: FontWeight.w600),
                        "v1.0".appTextStyle(
                            size: 15, fontWeight: FontWeight.w400),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.blueGrey.withOpacity(0.5),
                  Colors.redAccent.withOpacity(0)
                ])),
                child: ListTile(
                  leading: const Icon(Icons.home),
                  title: "Home"
                      .appTextStyle(size: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.myFavoriteScreen);
              },
              child: ListTile(
                leading: const Icon(Icons.heart_broken),
                title: "My Favorite"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.myDownloadScreen);
              },
              child: ListTile(
                leading: const Icon(Icons.download),
                title: "My Download"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.autoWallpaperScreen);
              },
              child: ListTile(
                leading: const Icon(Icons.settings_outlined),
                title: "Auto Wallpaper Settings"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.liveWallpaperNotSetScreen);
              },
              child: ListTile(
                leading: const Icon(Icons.question_mark_sharp),
                title: "Live Wallpaper Not Working?"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.getProScreen);
              },
              child: ListTile(
                leading: const Icon(Icons.no_accounts_outlined),
                title: "Get Pro"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 10, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: "More Options"
                    .appTextStyle(size: 14, fontWeight: FontWeight.w400),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: const Icon(Icons.star),
                title: "Rate this App"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: const Icon(Icons.share),
                title: "Sharing Caring"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
            InkWell(
              onTap: () {
                print("tap**");
                launch(
                    'mailto:rohithp8141@gmail.com?subject=App Feedback&body=Please give us feedback');
              },
              child: ListTile(
                leading: const Icon(Icons.email_rounded),
                title: "Send us Feedback"
                    .appTextStyle(size: 15, fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
