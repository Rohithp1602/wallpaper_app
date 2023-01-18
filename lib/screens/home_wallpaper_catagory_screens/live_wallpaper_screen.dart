import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/utils/app_string.dart';

import '../wallpaper_detail_screen.dart';

class LiveWallpaperScreen extends StatelessWidget {
  const LiveWallpaperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List wallpaperString = [
      AppImages.imgW1,
      AppImages.imgW2,
      AppImages.imgW3,
      AppImages.imgW4,
      AppImages.imgW1,
      AppImages.imgW2,
      AppImages.imgW3,
      AppImages.imgW4,
    ];
    return  Padding(
        padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
        child: SizedBox(
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: wallpaperString.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.6,
            ),
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.to(WallpaperDetailScreen(
                    imgString: wallpaperString[index],
                  ));
                },
                child: Padding(
                  padding:
                  const EdgeInsets.only(right: 5, bottom: 10, left: 5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        wallpaperString[index],
                        fit: BoxFit.fill,
                      )),
                ),
              );
            },
          ),
        )
    );
  }
}
