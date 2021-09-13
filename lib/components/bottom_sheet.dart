import 'package:flutter/material.dart';
import 'package:habeato/components/addon_button.dart';
import 'package:habeato/models/dish.dart';

class RoundBottomSheet extends StatefulWidget {
  const RoundBottomSheet({Key? key}) : super(key: key);

  @override
  State<RoundBottomSheet> createState() => _RoundBottomSheetState();
}

class _RoundBottomSheetState extends State<RoundBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(7, 5),
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            "Sides",
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  AddOnButton(
                    imgPath: addOn[0].path,
                    selected: addOn[0].isSelected,
                    toggleButton: () {
                      setState(
                        () {
                          addOn[0].toggle();
                        },
                      );
                    },
                  ),
                  const Text(
                    'Any Salad',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  AddOnButton(
                    imgPath: addOn[1].path,
                    selected: addOn[1].isSelected,
                    toggleButton: () {
                      setState(() {
                        addOn[1].toggle();
                      });
                    },
                  ),
                  const Text(
                    'Any Soup',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
