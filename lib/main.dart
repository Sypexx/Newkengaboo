import 'package:flutter/material.dart';
import 'package:kengaboo/authpage/logpage.dart';
import 'package:kengaboo/homepage/startpage.dart';

void main() {
  runApp(const MyApp());
}

MaterialColor themecolor = MaterialColor(
  const Color.fromRGBO(255, 155, 80, 1).value,
  const <int, Color>{
    50: Color.fromRGBO(255, 155, 80, 0.1),
    100: Color.fromRGBO(255, 155, 80, 0.2),
    200: Color.fromRGBO(255, 155, 80, 0.3),
    300: Color.fromRGBO(255, 155, 80, 0.4),
    400: Color.fromRGBO(255, 155, 80, 0.5),
    500: Color.fromRGBO(255, 155, 80, 0.6),
    600: Color.fromRGBO(255, 155, 80, 0.7),
    700: Color.fromRGBO(255, 155, 80, 0.8),
    800: Color.fromRGBO(255, 155, 80, 0.9),
    900: Color.fromRGBO(255, 155, 80, 1),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'KengaBoo',
      theme: ThemeData(primarySwatch: themecolor),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  home() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
          child: Container(
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
            Expanded(flex: 2, child: Container()),
            Expanded(
                flex: 2, child: Image.asset('assets/images/kengalogo.png')),
            Expanded(
              flex: 1,
              child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const LogPage()),
                    );
                  },
                  child: const Text('· Начать ·',
                      style: TextStyle(
                          fontFamily: 'Andika',
                          fontSize: 36,
                          color: Color.fromRGBO(118, 43, 1, 1)))),
            ),
            Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Image.asset('assets/images/teacher.png')),
                    Expanded(
                        flex: 1,
                        child: Stack(
                          children: [
                            Center(
                                child: Image.asset('assets/images/cloud.png')),
                            Row(
                              children: [
                                Expanded(flex: 1, child: Container()),
                                const Expanded(
                                  flex: 10,
                                  child: Text(
                                      textAlign: TextAlign.center,
                                      'Добро пожаловать!\nНажмите "НАЧАТЬ"\nчтобы перейти к\nначалу обучения'),
                                ),
                              ],
                            )
                          ],
                        ))
                  ],
                ))
          ],
        )),
      )),
    );
  }
}
