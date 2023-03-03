import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../color.dart';
import 'input_controller.dart';

class InputBox extends StatelessWidget {
  const InputBox({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: InputController(),
      builder: (InputController controller) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: 250,
                      height: 45,
                      child: TextField(
                          decoration: InputDecoration(
                            labelText: 'keyword',
                            labelStyle: TextStyle(color: ColorTheme.main),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(width: 1, color: ColorTheme.main)
                            ),
                          ),
                          controller: controller.textController
                      ),
                    ),
                    ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorTheme.main,
                          ),
                          onPressed: (){
                            // painter 그려야 하는 시점
                            controller.getKeyword();
                          },
                          child: const Text("등록")
                      ),
                  ]
                ),
              )

            ]
          ),
        );
      }
    );
  }

}