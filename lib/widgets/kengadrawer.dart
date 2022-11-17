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
      width: MediaQuery.of(context).size.width * 0.45,
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
                TextButton(onPressed: (() {}), child: Text('asdasd')),
                TextButton(onPressed: (() {}), child: Text('asdasd')),
                TextButton(onPressed: (() {}), child: Text('asdasd')),
                TextButton(onPressed: (() {}), child: Text('asdasd')),
                TextButton(onPressed: (() {}), child: Text('asdasd')),
              ],
            ),
            Row(
              children: const [Text('Выйти'), Icon(Icons.logout_outlined)],
            )
          ]),
        ),
      ),
    );
  }
}
