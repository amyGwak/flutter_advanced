import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../input/input_controller.dart';

class KeywordDraw extends StatelessWidget {
  const KeywordDraw({super.key});

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
                  ...controller.keywordList.map((KeywordObj keyObj) =>
                      CustomPaint(
                        painter: KeywordPainter(text: keyObj.text),
                        child: Container()
                        // child: Padding(
                        //   padding: const EdgeInsets.only(top: 10.0),
                        //   child: Container(
                        //     padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
                        //     height: 30,
                        //     decoration: BoxDecoration(
                        //       border: Border.all(
                        //         color: ColorTheme.main,
                        //       ),
                        //       borderRadius: BorderRadius.circular(8.0),
                        //     ),
                        //   ),
                        // ),
                      ),
                  )
                ]
            )
        ),
      ),

    );
  }
}


class KeywordPainter extends CustomPainter {

  KeywordPainter({
    required this.text,
  });

  String text;

  @override
  void paint(Canvas canvas, Size size) {

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;



}
