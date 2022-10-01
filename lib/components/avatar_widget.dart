import 'package:flutter/material.dart';
import 'package:khack_neumophism_design/components/neumorphism_button.dart';

enum AvatarType { TYPE1, TYPE2, TYPE3 }

class AvatarWidget extends StatelessWidget {
  AvatarType type;

  AvatarWidget({
    Key? key,
    required this.type,
  }) : super(key: key);

  Widget type1Widget() {
    return neuorphismButton1();
  }

  Widget type2Widget() {
    return neuorphismButton2();
  }

  Widget type3Widget() {
    return neuorphismButton2();
  }

  @override
  Widget build(BuildContext context) {
    switch (type) {
      case AvatarType.TYPE1:
        return type1Widget();
      case AvatarType.TYPE2:
        return type2Widget();
      case AvatarType.TYPE3:
        return type3Widget();
    }
    return Container();
  }
}
