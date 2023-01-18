import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/utils/app_string.dart';
import 'package:wallpaper_app/utils/download_media_utils.dart';
import 'package:wallpaper_app/utils/wallpaper_utils.dart';

class WallpaperDetailScreen extends StatefulWidget {
  String imgString;

  WallpaperDetailScreen({Key? key, required this.imgString}) : super(key: key);

  @override
  State<WallpaperDetailScreen> createState() => _WallpaperDetailScreenState();
}

class _WallpaperDetailScreenState extends State<WallpaperDetailScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  bool isLike = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "${widget.imgString}",
                fit: BoxFit.fill,
              )),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Get.back();
                      });
                    },
                    child: Image.asset(
                      AppIcons.icBack,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Image.asset(
                    AppIcons.icMore,
                    height: 50,
                    width: 50,
                  ),
                ],
              ).paddingOnly(top: 50, left: 25, right: 25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isLike
                      ? InkWell(
                          onTap: () {
                            setState(() {
                              isLike = !isLike;
                            });
                          },
                          child: Image.asset(
                            AppIcons.icLike,
                            height: 50,
                            width: 50,
                          ),
                        )
                      : InkWell(
                          onTap: () {
                            setState(() {
                              isLike = true;
                            });
                          },
                          child: Image.asset(
                            AppIcons.icUnlike,
                            height: 50,
                            width: 50,
                          ),
                        ),
                  InkWell(
                    onTap: () {
                      DownlaodMediaUtils.download();
                    },
                    child: Image.asset(
                      AppIcons.icDownload,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      WallpaperUtils.dowloadImage(context,
                          "https://images.pexels.com/photos/8803905/pexels-photo-8803905.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500");
                    },
                    child: Image.asset(
                      AppIcons.icSetWallpaper,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Image.asset(
                    AppIcons.icShare,
                    height: 50,
                    width: 50,
                  ),
                ],
              ).paddingOnly(left: 25, right: 25, bottom: 50),
            ],
          ),
        ],
      ),
    );
  }
}
