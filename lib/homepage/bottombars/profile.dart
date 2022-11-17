import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
                children: const [
                  Expanded(
                    flex: 5,
                    child: CircleAvatar(
                      backgroundColor: Colors.red,
                    ),
                  ),
                  Expanded(flex: 1, child: Text('Фамилия Имя')),
                ],
              ),
            ),
            Expanded(flex: 1, child: Container()),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Text('Номер телефона'),
                  TextField(
                    autofocus: false,
                  )
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Text('Номер телефона'),
                  TextField(autofocus: false)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Text('Номер телефона'),
                  TextField(autofocus: false)
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: const [
                  Text('Номер телефона'),
                  TextField(
                    autofocus: false,
                  )
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
