import 'package:flutter/material.dart';

import 'image/myImageUpload.dart';
import 'input/inputBox.dart';


class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        MyImageUpload(),
        InputBox()
      ]

    );
  }
}