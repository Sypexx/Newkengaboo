import 'package:flutter/material.dart';

class LogPage extends StatefulWidget {
  const LogPage({super.key});

  @override
  State<LogPage> createState() => _LogPageState();
}

class _LogPageState extends State<LogPage> {
  @override
  Widget build(BuildContext context) {
    final double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
          child: Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(children: const [
                            Text(
                              'Номер телефона',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextField(),
                          ]),
                        )),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Container(
                          child: Column(children: const [
                            Text(
                              'Дата рождения',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextField()
                          ]),
                        )),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.075,
                color: Colors.red,
                child: TextButton(
                    autofocus: true,
                    child: const Text('Логин'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: ((context) => const AlertDialog(
                              content: Text("works!"),
                            )))),
              ),
              const Text('Нету аккаунта?'),
              Container(
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.height * 0.075,
                color: Colors.red,
                child: TextButton(
                    autofocus: true,
                    child: const Text('Регистрация'),
                    onPressed: () => showDialog(
                        context: context,
                        builder: ((context) => const AlertDialog(
                              content: Text("works!"),
                            )))),
              ),
              Expanded(flex: 2, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
