import 'package:flutter/material.dart';
import 'package:kengaboo/homepage/menu/textview.dart';
import 'package:kengaboo/homepage/data/content.dart' as globals;

class Choose extends StatefulWidget {
  const Choose({super.key});

  @override
  State<Choose> createState() => _ChooseState();
}

class _ChooseState extends State<Choose> {
  @override
  Widget build(BuildContext context) {
    globals.applycat();
    final double bottomBarHeight = MediaQuery.of(context).padding.bottom * 0.97;
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottomBarHeight),
          decoration: BoxDecoration(
              image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(globals.backGround),
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
              flex: 2,
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
            Expanded(flex: 2, child: Image.asset(globals.categoryTitle)),
            Expanded(flex: 2, child: Container()),
            Expanded(
              flex: 18,
              child: Column(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const TextView()));
                      },
                      child: Image.asset(globals.categories[0]),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const TextView()));
                      },
                      child: Image.asset(globals.categories[1]),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const TextView()));
                      },
                      child: Image.asset(globals.categories[2]),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 2,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const TextView()));
                      },
                      child: Image.asset(globals.categories[3]),
                    ),
                  ),
                  Expanded(flex: 5, child: Container()),
                ],
              ),
            ),
            Expanded(flex: 4, child: Container()),
          ]),
        )
      ],
    );
  }
}
