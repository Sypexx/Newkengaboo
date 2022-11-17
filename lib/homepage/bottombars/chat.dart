import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
            width: double.infinity,
            margin: EdgeInsets.only(top: statusBarHeight),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text('Создать чат'),
                Icon(
                  Icons.add_circle_rounded,
                  color: Colors.greenAccent,
                )
              ],
            )));
  }
}
