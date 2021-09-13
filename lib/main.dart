import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:habeato/screens/addon_screen.dart';
import 'screens/menu_screen.dart';

void main() => runApp(const HabEato());

class HabEato extends StatelessWidget {
  const HabEato({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MenuPage(),
      initialRoute: MenuPage.id,
      routes: {
        MenuPage.id: (context) => const MenuPage(),
        AddOnPage.id: (context) => const AddOnPage(),
      },
    );
  }
}
