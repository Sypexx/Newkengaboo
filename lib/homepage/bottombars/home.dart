import 'package:flutter/material.dart';
import 'package:kengaboo/homepage/menu/menu.dart';

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
            flex: 2,
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => const MainMenu()));
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
                onPressed: (() {}),
                child: const Text('· 23 февраля ·',
                    style: TextStyle(
                        fontFamily: 'Andika',
                        fontSize: 36,
                        color: Color.fromRGBO(118, 43, 1, 1)))),
          ),
          Expanded(
            flex: 2,
            child: TextButton(
                onPressed: (() {}),
                child: const Text('· Космос ·',
                    style: TextStyle(
                        fontFamily: 'Andika',
                        fontSize: 36,
                        color: Color.fromRGBO(118, 43, 1, 1)))),
          ),
          Expanded(
            flex: 2,
            child: TextButton(
                onPressed: (() {}),
                child: const Text('· Детский сад ·',
                    style: TextStyle(
                        fontFamily: 'Andika',
                        fontSize: 36,
                        color: Color.fromRGBO(118, 43, 1, 1)))),
          ),
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 4,
              child: Row(
                children: [
                  Expanded(
                      flex: 1, child: Image.asset('assets/images/teacher.png')),
                  Expanded(
                      flex: 1,
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
