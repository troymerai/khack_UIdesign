import 'package:flutter/material.dart';
import 'package:khack_neumophism_design/components/avatar_widget.dart';

bool isPressed = false;

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Widget _button1() {
    return Stack(
      children: <Widget>[
        AvatarWidget(
          type: AvatarType.TYPE1,
        ),
        /*
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.white.withOpacity(0), BlendMode.dstATop),
              image: NetworkImage(
                'https://mblogthumb-phinf.pstatic.net/MjAxODA1MDdfNDkg/MDAxNTI1Njk4NjU2NjI1.lSg3sJKZCbQaJ4dpFv4lIZxHCvbc8UQpmlUTv9-DfCQg.cYnuROq_LKc3e8W0dBR1A4bZoKgZTsmWMhMzfrPhjiYg.PNG.studio_pan/20160922_120337.png?type=w800',
              ),
            ),
          ),
        )
        */
        /*
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Align(
              child: IconButton(
                alignment: Alignment.center,
                icon: Icon(Icons.camera),
                color: Colors.black,
                iconSize: MediaQuery.of(context).size.width * 0.5,
                onPressed: () {},
              ),
            );
          },
        ),
        */
      ],
    );
  }

  Widget _button2() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Align(
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Icon(Icons.camera),
                      color: isPressed ? Colors.black : Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _button3() {
    return Stack(
      children: [
        AvatarWidget(
          type: AvatarType.TYPE2,
        ),
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Align(
              child: Column(
                children: [
                  Expanded(
                    child: IconButton(
                      alignment: Alignment.center,
                      icon: Icon(Icons.browse_gallery),
                      color: isPressed ? Colors.black : Colors.white,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            );
          },
        ),
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
          AnimatedContainer(
              duration: const Duration(milliseconds: 200),
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
                color: isPressed ? Colors.white : Colors.green,
              ),
              Flexible(
                fit: FlexFit.tight,
                flex: 3,
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: _button3(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
