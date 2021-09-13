import 'package:flutter/material.dart';
import 'package:habeato/components/dish_button.dart';
import 'package:habeato/constants.dart';
import 'package:habeato/components/nav_button.dart';
import 'package:habeato/components/bottom_sheet.dart';
import 'package:habeato/models/dish.dart';

class AddOnPage extends StatefulWidget {
  const AddOnPage({Key? key}) : super(key: key);
  static const String id = 'addOn_screen';

  @override
  _AddOnPageState createState() => _AddOnPageState();
}

class _AddOnPageState extends State<AddOnPage> {
  int navigationIndex = -1;
  String imgPath = "images/meals/Curry_Rice.png";

  @override
  Widget build(BuildContext context) {
    // final Object? dish = ModalRoute.of(context)!.settings.arguments;
    final args = ModalRoute.of(context)!.settings.arguments as Dish;
    return Container(
      decoration: kGradientBackgroundDecoration,
      padding: const EdgeInsets.only(top: 60),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                "Select the side(s) you prefer with Dinner",
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 30,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    Hero(
                      tag: args,
                      child: DishButton(
                          imgPath: args.path,
                          selected: false,
                          toggleButton: () {}),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomSheet: const RoundBottomSheet(),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: (int newIndex) {
            navigationIndex = newIndex;
            if (navigationIndex == 0) {
              Navigator.pop(context);
            }
          },
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kActiveNavIconColor,
          unselectedItemColor: kActiveNavIconColor,
          items: const [
            BottomNavigationBarItem(
                icon: NavBackButton(
                  icon: Icons.chevron_left,
                  label: "Back",
                  selected: true,
                ),
                label: "back"),
            BottomNavigationBarItem(
              icon: NavNextButton(
                icon: Icons.chevron_right,
                label: "Skip",
                selected: true,
              ),
              label: "next",
            ),
          ],
        ),
      ),
    );
  }
}
