import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profile_upload/src/controller/image_controller.dart';

class ImageUpload extends StatelessWidget {
  ImageUpload({super.key});

  final ImageController imageController = Get.put(ImageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Image page', style: TextStyle(fontSize: 30)),
        ),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(50),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                  ),
                  child: imageController.selectedImage.value != null
                      ? ClipRRect(
                          child: Image.file(
                            imageController.selectedImage.value!,
                          ),
                        )
                      : Icon(Icons.image, size: 80, color: Colors.blueGrey),
                ),
                SizedBox(height: 30),

                ElevatedButton(
                  onPressed: imageController.selectedImage,

                  child: Text(
                    'Image Upload',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                if (imageController.selectedImage.value != null)
                  ElevatedButton(
                    onPressed: imageController.removeImage,
                    child: const Text('Remove Image'),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
