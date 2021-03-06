import 'package:flutter/material.dart';
import 'package:habito/models/universalValues.dart';

class OptionCircle extends StatelessWidget {
  final Function onTap;
  final EdgeInsets margin;
  final IconData icon;
  OptionCircle(this.onTap, this.margin, this.icon);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: onTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        curve: Curves.decelerate,
        margin: margin,
        height: 36,
        width: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: MyColors.habitOption,
          boxShadow: [
            BoxShadow(
              color: MyColors.backdropBlack,
              spreadRadius: 6,
              blurRadius: 6,
            )
          ],
        ),
        child: Icon(
          icon,
          color: MyColors.placeholderGrey,
          size: 18,
        ),
      ),
    );
  }
}
