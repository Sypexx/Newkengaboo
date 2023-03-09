import 'package:flutter/material.dart';

class RegPage extends StatefulWidget {
  const RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
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
      child: Container(
        margin: EdgeInsets.only(top: statusBarHeight),
        color: Colors.white,
        child: Column(
          children: [
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 2,
              child: Column(
                children: const [],
              ),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text(
                        'Номер телефона',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text(
                        'Электронная почта',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Expanded(flex: 1, child: Container())
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text(
                        'Пароль',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Expanded(flex: 1, child: Container())
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  const Expanded(
                      flex: 1,
                      child: Text(
                        'Дата рождения',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )),
                  Expanded(flex: 1, child: Container())
                ],
              ),
            ),
            Expanded(flex: 3, child: Container()),
          ],
        ),
      ),
    );
  }
}
