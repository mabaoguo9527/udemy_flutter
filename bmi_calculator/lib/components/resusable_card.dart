import 'package:flutter/material.dart';
import '../constants.dart';

@immutable
class ReusableCard extends StatelessWidget {
  const ReusableCard({
    super.key,
    this.colour = kActiveCardColour,
    this.cardChild = const SizedBox(
      height: double.infinity,
      width: double.infinity,
    ),
    this.onTap,
  });

  final Color? colour;
  final Widget cardChild;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0), // 设置圆角
        ),
      ),
    );
  }
}
