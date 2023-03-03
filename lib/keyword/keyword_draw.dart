import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../color.dart';
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
                        painter: KeywordPainter(keyword: keyObj.text),
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

  final controller = Get.find<InputController>();

  KeywordPainter({
    required this.keyword,
  });

  final String keyword;


  @override
  void paint(Canvas canvas, Size size) {

    final textSpan = TextSpan(style: TextStyle(
        color: ColorTheme.main,
        fontSize: 20,
        fontWeight: FontWeight.bold
    ),
        text: keyword);


    final drawText = TextPainter()
      ..text = textSpan
      ..textDirection = TextDirection.ltr
      ..textAlign = TextAlign.center
      ..layout();


    drawText.paint(canvas, Offset(0,20));

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;

}
