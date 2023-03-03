import 'package:flutter/material.dart';
import 'image/image_upload.dart';
import 'input/input_box.dart';
import 'keyword/keyword_draw.dart';
import 'keyword/keyword_list.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              children: const <Widget>[
                MyImageUpload(),
                InputBox(),
                KeywordDraw(),
                // KeywordList(),
              ]
          ),
        ),
      )
    );
  }
}