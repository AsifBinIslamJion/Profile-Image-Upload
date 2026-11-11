import 'dart:io';
import 'dart:ui';

import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  final Rx<File?> selectedImage = Rx<File?>(null);

  VoidCallback? get removeImage => null;
  Future<void> pickImage() async {
    try {
      final XFile? image = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      if (image != null) {
        selectedImage.value = File(image.path);
      }
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
