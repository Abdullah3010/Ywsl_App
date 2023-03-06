import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const RoundedButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.borderRadius = 50,
    this.margin = const EdgeInsets.symmetric(
      vertical: 10,
    ),
    this.padding = const EdgeInsets.symmetric(
      horizontal: 50,
      vertical: 12,
    ),
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      onPressed: () {
        onPressed();
      },
      child: child,
    );
  }
}
