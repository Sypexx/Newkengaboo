import 'dart:ui';
import 'package:flutter/material.dart';

class KengaDrawer extends StatefulWidget {
  const KengaDrawer({super.key});

  @override
  State<KengaDrawer> createState() => _KengaDrawerState();
}

class _KengaDrawerState extends State<KengaDrawer> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Drawer(
      elevation: 0,
      width: MediaQuery.of(context).size.width * 0.5,
      backgroundColor: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 3.0,
          sigmaY: 3.0,
        ),
        child: Container(
          margin: EdgeInsets.only(top: statusBarHeight),
          color: Colors.white,
          child: Column(children: [
            Column(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                Text('Пользователь')
              ],
            ),
            Column(
              children: [
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'Профиль',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'Настройки',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'Контакты',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'Частые вопросы',
                      style: TextStyle(color: Colors.black),
                    )),
                TextButton(
                    onPressed: (() {}),
                    child: const Text(
                      'О версии',
                      style: TextStyle(color: Colors.black),
                    )),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
