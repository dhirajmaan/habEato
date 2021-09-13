import 'package:flutter/material.dart';
import 'package:habeato/constants.dart';

const double kIconSize = 50;

class NavBackButton extends StatelessWidget {
  const NavBackButton(
      {Key? key,
      required this.icon,
      required this.label,
      this.selected = false})
      : super(key: key);

  final String label;
  final IconData icon;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          size: kIconSize,
        ),
        Text(label,
            style: kNavButtonTextStyle.copyWith(
                color: selected == true ? kActiveNavIconColor : Colors.grey)),
      ],
    );
  }
}

class NavNextButton extends StatelessWidget {
  const NavNextButton(
      {Key? key,
      required this.icon,
      required this.label,
      this.selected = false})
      : super(key: key);

  final String label;
  final IconData icon;
  final bool selected;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          label,
          style: kNavButtonTextStyle.copyWith(
            color: selected == true ? kActiveNavIconColor : Colors.grey,
          ),
        ),
        Icon(
          icon,
          size: kIconSize,
          color: selected == true ? kActiveNavIconColor : Colors.grey,
        ),
      ],
    );
  }
}
