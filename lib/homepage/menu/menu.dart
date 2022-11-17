import 'package:flutter/material.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    final double bottomBarHeight = MediaQuery.of(context).padding.bottom;
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
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
            const Expanded(
              flex: 2,
              child: Text('Новый год', style: TextStyle(fontSize: 36)),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 5,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.01,
                    vertical: MediaQuery.of(context).size.height * 0.01),
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(57, 160, 216, 1),
                    border: Border.all(
                        color: const Color.fromRGBO(43, 115, 154, 1)),
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Expanded(
                        flex: 1,
                        child: Text(
                          "Сценарии мероприятии",
                          style: TextStyle(fontSize: 24),
                        )),
                    Expanded(
                        flex: 2, child: Image.asset('assets/images/list.png'))
                  ],
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
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(213, 196, 59, 1),
                            border: Border.all(
                                color: const Color.fromRGBO(149, 137, 41, 1)),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            const Expanded(child: Text('Игры')),
                            Expanded(
                              child: Image.asset('assets/images/cubes.png'),
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 10,
                      child: Container(
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(160, 188, 56, 1),
                            border: Border.all(),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            const Expanded(child: Text('Конспекты занятии')),
                            Expanded(
                              child: Image.asset('assets/images/desk.png'),
                            )
                          ],
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
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const Expanded(child: Text('Шаблоны для рисования')),
                          Expanded(
                            child: Image.asset('assets/images/shapes.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.amber,
                          border: Border.all(),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          const Expanded(child: Text('Конспекты занятии')),
                          Expanded(
                            child: Image.asset('assets/images/notes.png'),
                          )
                        ],
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
