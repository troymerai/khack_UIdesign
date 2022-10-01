import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

class neuorphismButton1 extends StatefulWidget {
  const neuorphismButton1({super.key});

  @override
  State<neuorphismButton1> createState() => _neuorphismButton1State();
}

class _neuorphismButton1State extends State<neuorphismButton1> {
  bool isPressed = true;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? Offset(5, 5) : Offset(15, 15);
    double blur = isPressed ? 5 : 20;
    final backgroundColor = Colors.white;

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
  bool isPressed = true;
  //bool check = true;

  @override
  Widget build(BuildContext context) {
    Offset distance = isPressed ? Offset(3, 3) : Offset(9, 9);
    double blur = isPressed ? 5 : 20;
    final backgroundColor = Colors.white;

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
                });
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(50),
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
