import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kengaboo/widgets/kengadrawer.dart';
import 'bottombars/chat.dart';
import 'bottombars/home.dart';
import 'bottombars/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> data = [const Profile(), const Home(), const Chat()];

  @override
  Widget build(BuildContext context) {
    Future<bool> showExitPopup() async {
      return await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Выход из приложения'),
              content: const Text('Вы действительно желаете выйти?'),
              actions: [
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Нет'),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Да'),
                ),
              ],
            ),
          ) ??
          false;
    }

    return WillPopScope(
      onWillPop: showExitPopup,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: const KengaDrawer(),
          body: CupertinoTabScaffold(
            resizeToAvoidBottomInset: false,
            tabBar: CupertinoTabBar(
              activeColor: Colors.amber[800],
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.home_outlined),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat_outlined),
                ),
              ],
            ),
            tabBuilder: (context, index) {
              return CupertinoTabView(
                builder: (context) {
                  return data[index];
                },
              );
            },
          )),
    );
  }
}
