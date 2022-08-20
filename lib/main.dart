// ignore_for_file: deprecated_member_use, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: ('Dialog Box'),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Dialog Box"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RaisedButton(
                child: const Text("show dialog"),
                onPressed: () {
                  Get.defaultDialog(
                    title: ("Dialog"),
                    titleStyle:
                        const TextStyle(fontSize: 30, color: Colors.white),
                    middleText: "Middle",
                    middleTextStyle: const TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                    // radius: 90,
                    content: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        CircularProgressIndicator(
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Text(" loading"),
                        ),
                      ],
                    ),
                    textCancel: "Cancel",
                    cancelTextColor: Colors.black,
                    textConfirm: "Confirm",
                    confirmTextColor: Colors.black,
                    onCancel: () {},
                    onConfirm: () {},
                    buttonColor: Colors.white,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
