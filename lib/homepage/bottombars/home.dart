import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kengaboo/homepage/menu/menu.dart';
import 'package:kengaboo/homepage/data/content.dart' as globals;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
        begin: (Alignment.topRight),
        end: Alignment.bottomLeft,
        colors: [
          Color.fromRGBO(255, 163, 96, 1),
          Color.fromRGBO(255, 112, 7, 1)
        ],
      )),
      child: SafeArea(
          child: Column(
        children: [
          Expanded(flex: 1, child: Container()),
          const Expanded(
              flex: 2,
              child: Text('Выберите тему',
                  style: TextStyle(
                      fontFamily: 'Andika',
                      fontSize: 36,
                      color: Color.fromRGBO(118, 43, 1, 1)))),
          Expanded(
            flex: 7,
            child: CupertinoScrollbar(
              isAlwaysShown: true,
              child: ListView(children: [
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 0;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Новый год ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 1;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· 23 февраля ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 2;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· 8 Марта ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 3;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Космос ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 4;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Детский сад ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 5;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Растения ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 6;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Семья ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 7;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Транспорт ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 8;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Мебель ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 9;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Лето ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
                Expanded(
                  flex: 2,
                  child: TextButton(
                      onPressed: () {
                        globals.choosedTheme = 10;
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    const MainMenu()));
                      },
                      child: const Text('· Осень ·',
                          style: TextStyle(
                              fontFamily: 'Andika',
                              fontSize: 36,
                              color: Color.fromRGBO(118, 43, 1, 1)))),
                ),
              ]),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 3,
              child: Row(
                children: [
                  Expanded(
                      flex: 6, child: Image.asset('assets/images/teacher.png')),
                  Expanded(
                      flex: 5,
                      child: Stack(
                        children: [
                          Center(child: Image.asset('assets/images/cloud.png')),
                          Row(
                            children: [
                              Expanded(flex: 1, child: Container()),
                              const Expanded(
                                flex: 10,
                                child: Text(
                                    textAlign: TextAlign.center,
                                    'Тема занятия - один\nиз важнейших\nаспектов в работе\nвоспитателя'),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              ))
        ],
      )),
    );
  }
}
