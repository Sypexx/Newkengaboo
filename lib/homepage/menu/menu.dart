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
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 1,
              child: IconButton(
                onPressed: (() {
                  Navigator.pop(context);
                }),
                icon: const Icon(Icons.arrow_back),
              ),
            ),
            const Expanded(
              flex: 2,
              child: Text('Новый год', style: TextStyle(fontSize: 36)),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.amber,
                    border: Border.all(),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    const Expanded(
                        child: Text(
                      "Сценарии мероприятии",
                      style: TextStyle(fontSize: 24),
                    )),
                    Expanded(child: Image.asset('assets/images/teacher.png'))
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
                            color: Colors.amber,
                            border: Border.all(),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(child: Text('Игры')),
                            Expanded(
                              child: Image.asset('assets/images/teacher.png'),
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
                                BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          children: [
                            Expanded(child: Text('Конспекты занятии')),
                            Expanded(
                              child: Image.asset('assets/images/teacher.png'),
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Expanded(child: Text('Игры')),
                          Expanded(
                            child: Image.asset('assets/images/teacher.png'),
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
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Column(
                        children: [
                          Expanded(child: Text('Конспекты занятии')),
                          Expanded(
                            child: Image.asset('assets/images/teacher.png'),
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
