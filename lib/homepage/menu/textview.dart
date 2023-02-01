import 'package:flutter/material.dart';
import 'package:kengaboo/homepage/menu/choose.dart';
import 'package:kengaboo/homepage/data/texts.dart';
import 'package:kengaboo/homepage/data/chooses.dart';
import 'package:kengaboo/homepage/data/content.dart' as globals;

class TextView extends StatefulWidget {
  const TextView({super.key});

  @override
  State<TextView> createState() => _TextViewState();
}

class _TextViewState extends State<TextView> {
  @override
  Widget build(BuildContext context) {
    final double bottomBarHeight = MediaQuery.of(context).padding.bottom * 0.97;
    return Stack(children: [
      Container(
        margin: EdgeInsets.only(bottom: bottomBarHeight),
        decoration: BoxDecoration(
            image: DecorationImage(
                alignment: Alignment.bottomCenter,
                image: AssetImage(widget.background),
                fit: BoxFit.contain),
            gradient: const LinearGradient(
              begin: (Alignment.topRight),
              end: Alignment.bottomLeft,
              colors: [
                Color.fromRGBO(255, 163, 96, 1),
                Color.fromRGBO(255, 112, 7, 1)
              ],
            )),
      ),
      Container(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.05,
            vertical: bottomBarHeight),
        margin: EdgeInsets.only(bottom: bottomBarHeight * 0.2),
        child: Column(children: [
          Expanded(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    iconSize: 36,
                    onPressed: (() {
                      Navigator.pop(context);
                    }),
                    icon: const Icon(Icons.arrow_back),
                  ),
                  Container(),
                ]),
          ),
          Expanded(
            flex: 2,
            child: Image.asset(widget.mainlogo),
          ),
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 22,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListView(
                  padding: EdgeInsets.symmetric(
                      horizontal: bottomBarHeight * 0.2,
                      vertical: bottomBarHeight * 0.5),
                  children: [
                    Text(
                      SomeText.scenario[0],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    )
                  ]),
            ),
          )
        ]),
      )
    ]);
  }
}
