import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';


class WordType {
  final String cardText;
  final Size textLength;
  bool? isClick = false;
  double? xPos = 0;
  double? yPos = 0;

  WordType({
    required this.cardText,
    required this.textLength,
    this.isClick,
    this.xPos,
    this.yPos,
  });
}

class KeywordObj {
  final int id;
  final String text;

  KeywordObj({
    required this.id,
    required this.text,
  });
}

class InputController extends GetxController {
  static InputController get to => Get.find<InputController>();


  final textController = TextEditingController();
  RxString keyword = "".obs;
  RxList<KeywordObj> keywordList = <KeywordObj>[].obs;


  getKeyword () {
    keyword.value = textController.text;

    keywordList.add(
        KeywordObj(
          text: keyword.value,
          id: keywordList.length + 1
      )
    );

    textController.clear();
    keyword.value = "";
    update();
  }



}