import 'package:flutter/material.dart';
import 'package:khack_neumophism_design/components/avatar_widget.dart';

class App extends StatelessWidget {
  const App({super.key});

  Widget _button1() {
    return Stack(
      children: <Widget>[
        AvatarWidget(
          type: AvatarType.TYPE1,
        ),
        /*LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Align(
              child: IconButton(
                Icons.camera,
                color: Colors.black,
                size: MediaQuery.of(context).size.width * 0.5,
                
              ),
            );
          },
        ),*/
      ],
    );
  }

  Widget _button2() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.85,
              child: _button1()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: _button2(),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.15,
                color: Colors.white,
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: _button2(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
