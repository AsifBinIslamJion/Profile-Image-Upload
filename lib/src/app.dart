import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_upload/src/pages/image_upload.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: ImageUpload(),
      debugShowCheckedModeBanner: false,
    );
  }
}
