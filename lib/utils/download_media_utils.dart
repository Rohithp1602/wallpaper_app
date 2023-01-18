import 'package:dio/dio.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
import 'package:wallpaper_app/utils/extentions.dart';

class DownlaodMediaUtils {
  static Future<void> download() async {
    var appDocDir = await getExternalStorageDirectory();
    String savePath = appDocDir!.path + "/img.jpg";
    await Dio().download(
        "https://images.pexels.com/photos/10069890/pexels-photo-10069890.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
        savePath);
    final result = await ImageGallerySaver.saveFile(savePath);
    showAppSnackBar("Wallpaper Download Successfully.");
  }
}
