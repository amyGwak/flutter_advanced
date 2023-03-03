import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../color.dart';
import '../input/input_controller.dart';

class KeywordList extends StatelessWidget {
  const KeywordList({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<InputController>();
    return SizedBox(
      width: 300,
      height: 300,
      child: SingleChildScrollView(
        child: Obx(() =>
            Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 5,
              children: <Widget>[
                ...controller.keywordList.map((keyword) =>
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Container(
                          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                          height: 30,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: ColorTheme.main,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Text(keyword.text),
                      ),
                    ),
                )
              ]
            )
        ),
      ),

    );
  }
}
