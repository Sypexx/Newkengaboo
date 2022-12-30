import 'package:flutter/material.dart';

class Choose extends StatefulWidget {
  const Choose({super.key, this.mainlogo, this.background});

  final mainlogo;
  final background;
  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    final double bottomBarHeight = MediaQuery.of(context).padding.bottom * 0.97;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottomBarHeight),
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(widget.background),
                  fit: BoxFit.contain),
              gradient: const LinearGradient(
                begin: (Alignment.topRight),
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromRGBO(255, 163, 96, 1),
                  Color.fromRGBO(255, 112, 7, 1)
                ],
              )),
        ),
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.05,
              vertical: bottomBarHeight),
          child: Column(children: [
            Expanded(
              flex: 1,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      iconSize: 36,
                      onPressed: (() {
                        Navigator.pop(context);
                      }),
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Container(),
                  ]),
            ),
            Expanded(flex: 10, child: Text('asdasdsda')),
            Expanded(flex: 4, child: Container()),
          ]),
        )
      ],
    );
  }
}
