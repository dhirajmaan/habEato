import 'package:flutter/material.dart';
import 'package:habeato/constants.dart';
import 'package:habeato/models/dish.dart';
import 'package:habeato/components/dish_button.dart';
import 'package:habeato/components/nav_button.dart';
import 'addon_screen.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({Key? key}) : super(key: key);
  static const String id = 'menu_screen';

  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int navigationIndex = 0;
  bool dishSelected = false;
  dynamic selectedDish;
  bool checkDishSelected() {
    for (Dish dish in menu) {
      if (dish.isSelected == true) {
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 60),
      decoration: kGradientBackgroundDecoration,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: const [
                  Text(
                    "How does your Dinner look like?",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 35,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "(excluding salad, curd, and sides)",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Select any 1 or more plates",
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
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
                child: GridView.builder(
                  itemCount: menu.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, int index) {
                    return Hero(
                      tag: menu[index],
                      child: DishButton(
                        imgPath: menu[index].path,
                        selected: menu[index].isSelected,
                        toggleButton: () {
                          setState(
                            () {
                              menu[index].toggle();
                              dishSelected = checkDishSelected();
                              selectedDish = menu[index];
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: navigationIndex,
          onTap: (int newIndex) {
            navigationIndex = newIndex;
            if (navigationIndex == 1 && dishSelected) {
              Navigator.pushNamed(context, AddOnPage.id,
                  arguments: selectedDish);
            }
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: kActiveNavIconColor,
          unselectedItemColor: kActiveNavIconColor,
          items: [
            const BottomNavigationBarItem(
                icon: NavBackButton(
                  icon: Icons.chevron_left,
                  label: "Back",
                  selected: true,
                ),
                label: "back"),
            BottomNavigationBarItem(
              icon: NavNextButton(
                icon: Icons.chevron_right,
                label: "Next",
                selected: dishSelected == true,
              ),
              label: "next",
            ),
          ],
        ),
      ),
    );
  }
}
