import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import '../color.dart';
import 'image_controller.dart';


class MyImageUpload extends StatelessWidget {
  const MyImageUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: ImageController(),
      builder: (ImageController controller) {
        return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: ColorTheme.main,
                        style: BorderStyle.solid,
                        width: 1
                      ),
                    image: controller.pickedImages.isNotEmpty ?
                    DecorationImage(
                      fit: BoxFit.cover,
                      image: FileImage(File(controller.pickedImages[0].path))
                    ) : null
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // foregroundColor:
                    backgroundColor: ColorTheme.main,
                ),
                onPressed: () {
                  controller.pickImage();
                },
                child: const Text("이미지 업로드!")

              )
            ]
        );
      }
    );
  }

}