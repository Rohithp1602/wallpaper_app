import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallpaper_app/screens/wallpaper_detail_screen.dart';
import 'package:wallpaper_app/utils/app_string.dart';
import 'package:wallpaper_app/utils/extentions.dart';
import 'package:wallpaper_app/utils/storage.dart';

class TreadingScreen extends StatefulWidget {
  const TreadingScreen({Key? key}) : super(key: key);

  @override
  State<TreadingScreen> createState() => _TreadingScreenState();
}

class _TreadingScreenState extends State<TreadingScreen> {
  @override
  Widget build(BuildContext context) {
    final Storage storage = Storage();
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
    double mqHeight = MediaQuery.of(context).size.height;
    double mqWidth = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 200,
                width: double.infinity,
                child: Image.asset(
                  AppImages.imgBgTest,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            // Container(
            //   height: 300,
            //   child: FutureBuilder(
            //     future: storage.downloadUrl('w1.jpg'),
            //     builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
            //       if (snapshot.connectionState == ConnectionState.done &&
            //           snapshot.hasData) {
            //         return Container(
            //           height: 200,
            //           width: 200,
            //           child: Image.network(
            //             snapshot.data!,
            //             fit: BoxFit.cover,
            //           ),
            //         );
            //       }
            //       if (snapshot.connectionState == ConnectionState.waiting &&
            //           snapshot.hasData) {
            //         return Center(
            //           child: CircularProgressIndicator(),
            //         );
            //       }
            //       return Container();
            //     },
            //   ),
            // ),
            (15.0).addHSpace(),
            SizedBox(
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
            ),
          ],
        ),
      ),
    );
  }
}
