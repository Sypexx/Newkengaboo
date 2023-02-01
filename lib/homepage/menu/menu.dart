import 'package:flutter/material.dart';
import 'package:kengaboo/homepage/menu/choose.dart';
import 'package:kengaboo/homepage/data/content.dart' as globals;

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});
  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    globals.changeTheme();
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
            Expanded(
              flex: 2,
              child: Image.asset(globals.themeTitle),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 5,
              child: InkWell(
                onTap: () {
                  globals.categoryid = 0;
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const Choose()));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.01,
                      vertical: MediaQuery.of(context).size.height * 0.01),
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(57, 160, 216, 1),
                      border: Border.all(
                          color: const Color.fromRGBO(43, 115, 154, 1)),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Image.asset('assets/images/textmain.png'),
                      ),
                      Expanded(
                          flex: 2, child: Image.asset('assets/images/list.png'))
                    ],
                  ),
                ),
              ),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
                flex: 7,
                child: Row(
                  children: [
                    Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          globals.categoryid = 1;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Choose()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(213, 196, 59, 0.9),
                              border: Border.all(
                                  color:
                                      const Color.fromRGBO(149, 137, 41, 0.9)),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 1,
                                  child: Image.asset(
                                      'assets/images/textgame.png')),
                              Expanded(flex: 1, child: Container()),
                              Expanded(
                                flex: 2,
                                child: Image.asset('assets/images/cubes.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 10,
                      child: InkWell(
                        onTap: () {
                          globals.categoryid = 2;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const Choose()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(160, 188, 56, 0.9),
                              border: Border.all(
                                color: const Color.fromRGBO(112, 132, 40, 0.9),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20))),
                          child: Column(
                            children: [
                              Expanded(
                                  flex: 5,
                                  child: Image.asset(
                                      'assets/images/texttasks.png')),
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 4,
                                child: Image.asset('assets/images/desk.png'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
            Expanded(flex: 1, child: Container()),
            Expanded(
                flex: 7,
                child: Row(children: [
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        globals.categoryid = 3;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Choose()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(220, 108, 55, 0.9),
                            border: Border.all(
                                color: const Color.fromRGBO(145, 76, 38, 0.9)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 3,
                                child:
                                    Image.asset('assets/images/textpaint.png')),
                            Expanded(flex: 1, child: Container()),
                            Expanded(
                              flex: 3,
                              child: Image.asset('assets/images/shapes.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 10,
                    child: InkWell(
                      onTap: () {
                        globals.categoryid = 4;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const Choose()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(149, 201, 196, 0.9),
                            border: Border.all(
                                color:
                                    const Color.fromRGBO(104, 141, 137, 0.9)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(
                                flex: 1,
                                child:
                                    Image.asset('assets/images/textsongs.png')),
                            Expanded(flex: 2, child: Container()),
                            Expanded(
                              flex: 2,
                              child: Image.asset('assets/images/notes.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ])),
            Expanded(flex: 1, child: Container()),
          ]),
        )
      ],
    );
  }
}
