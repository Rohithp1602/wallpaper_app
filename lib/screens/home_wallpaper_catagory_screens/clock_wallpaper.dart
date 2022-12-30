import 'package:flutter/material.dart';

class ClockWallpaperScreen extends StatelessWidget {
  const ClockWallpaperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 10,left: 5,right: 5,bottom: 5),
      child: SizedBox(
        child: GridView.builder(
          shrinkWrap: true,
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.only(right: 5, bottom: 10, left: 5),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10)),
              ),
            );
          },
        ),
      ),
    );
  }
}
