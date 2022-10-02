import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:get/get.dart';
import 'package:khack_neumophism_design/src/controller/controller.dart';

import '../src/app.dart';

class neuorphismButton1 extends StatefulWidget {
  const neuorphismButton1({super.key});

  @override
  State<neuorphismButton1> createState() => _neuorphismButton1State();
}

class _neuorphismButton1State extends State<neuorphismButton1> {
  //bool isPressed = false;
  //bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? Offset(5, 5) : Offset(15, 15);
    double blur = isPressed ? 5 : 20;
    final backgroundColor = isPressed ? Colors.white : Colors.green;
    Get.put(ControllerClass());

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPressed = !isPressed;
                  /**눌렀을 때 다른 페이지로 넘어가게 해줌 */
                  // isChanged = !isChanged;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: backgroundColor,
                  //borderRadius: BorderRadius.circular(50),

                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: -distance,
                      blurRadius: blur,
                      spreadRadius: 0.2,
                      inset: isPressed,
                    ),
                    BoxShadow(
                      color: Color(0xFFA7A9AF),
                      offset: distance,
                      blurRadius: blur,
                      spreadRadius: 0.2,
                      inset: isPressed,
                    ),
                  ],
                ),
                child: SizedBox(
                  child: Align(
                    child: Icon(
                      Icons.camera,
                      color: isPressed ? Colors.black : Colors.white,
                      size: MediaQuery.of(context).size.width * 0.5,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class neuorphismButton2 extends StatefulWidget {
  const neuorphismButton2({super.key});

  @override
  State<neuorphismButton2> createState() => _neuorphismButton2State();
}

class _neuorphismButton2State extends State<neuorphismButton2> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? Offset(3, 3) : Offset(9, 9);
    double blur = isPressed ? 5 : 20;
    final backgroundColor = isPressed ? Colors.white : Colors.green;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SizedBox(
            child: GestureDetector(
              /*onTap: () {
                setState(() {
                  isPressed = !isPressed;
                });
              }*/
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: -distance,
                      blurRadius: blur,
                      //spreadRadius: 0.1,
                      inset: isPressed,
                    ),
                    BoxShadow(
                      color: Color(0xFFA7A9AF),
                      offset: distance,
                      blurRadius: blur,
                      //spreadRadius: 0.1,
                      inset: isPressed,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
