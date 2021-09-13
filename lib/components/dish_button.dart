import 'package:flutter/material.dart';
import 'package:habeato/constants.dart';

class DishButton extends StatelessWidget {
  const DishButton(
      {Key? key,
      required this.imgPath,
      required this.selected,
      required this.toggleButton})
      : super(key: key);

  final String imgPath;
  final bool selected;
  final VoidCallback toggleButton;

  //@override
  //State<DishButton> createState() => _DishButtonState();
//}

//class _DishButtonState extends State<DishButton> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 19,
          left: 17,
          child: Container(
            constraints: const BoxConstraints.tightFor(height: 167, width: 167),
            decoration: selected == true ? kSelectedDishDecoration : null,
          ),
        ),
        Positioned(
          top: 20,
          left: 20,
          child: Container(
            constraints: const BoxConstraints.tightFor(height: 147, width: 147),
            decoration: BoxDecoration(
              // color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.6),
                  spreadRadius: 2,
                  blurRadius: 2,
                  offset: const Offset(8, 12),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: RawMaterialButton(
            onPressed: toggleButton,
            splashColor: Colors.transparent,
            // focusColor: Colors.white,
            child: Image.asset(imgPath),
            shape: const CircleBorder(),
            constraints: const BoxConstraints.tightFor(height: 200, width: 200),
          ),
        ),
      ],
    );
  }
}
