import 'package:flutter/material.dart';
import 'package:habeato/constants.dart';

class AddOnButton extends StatelessWidget {
  const AddOnButton({
    required this.imgPath,
    required this.selected,
    required this.toggleButton,
    Key? key,
  }) : super(key: key);
  final String imgPath;
  final bool selected;
  final VoidCallback toggleButton;
  //@override
  //State<AddOnButton> createState() => _AddOnButtonState();
//}

//class _AddOnButtonState extends State<AddOnButton> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //this is for selected highlight
        Positioned(
          top: 10,
          left: 8,
          child: Container(
            constraints: const BoxConstraints.tightFor(height: 130, width: 130),
            decoration: selected == true ? kSelectedAddOnDecoration : null,
          ),
        ),
        //this is back shadow
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            constraints: const BoxConstraints.tightFor(height: 110, width: 110),
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
            constraints: const BoxConstraints.tightFor(height: 150, width: 150),
          ),
        ),
      ],
    );
  }
}
