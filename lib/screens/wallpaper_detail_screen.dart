import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/utils/app_string.dart';

class WallpaperDetailScreen extends StatefulWidget {
  String imgString;

  WallpaperDetailScreen({Key? key, required this.imgString}) : super(key: key);

  @override
  State<WallpaperDetailScreen> createState() => _WallpaperDetailScreenState();
}

class _WallpaperDetailScreenState extends State<WallpaperDetailScreen> {
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
              ).paddingOnly(top: 50, left: 25,right: 25),
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
                  Image.asset(
                    AppIcons.icDownload,
                    height: 50,
                    width: 50,
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
