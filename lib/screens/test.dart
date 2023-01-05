import 'package:flutter/material.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  bool enable = false;
  bool disable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("task")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: () {
              setState(() {
                enable = true;
              });
              if(enable){
                print("clicked");
              }
            }, child: Text("1")),
            ElevatedButton(onPressed: () {}, child: Text("2")),
            ElevatedButton(onPressed: () {}, child: Text("3")),
            ElevatedButton(onPressed: () {}, child: Text("4")),
          ],
        ),
      ),
    );
  }
}
