import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImageController extends GetxController {
  static ImageController get to => Get.find<ImageController>();

  final ImagePicker picker = ImagePicker();
  List<XFile> pickedImages = [];



  Future<void> pickImage () async {
    final List<XFile> images = await picker.pickMultiImage();

    // if(images != null) {
      pickedImages = images;
      update();
    // }
  }

}