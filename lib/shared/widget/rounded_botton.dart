import 'package:flutter/material.dart';

import '../../config/constants/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final Widget child;
  final Function onPressed;
  final double? borderRadius;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double? width;

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
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      padding: padding,
      minWidth: width,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius!),
      ),
      onPressed: () {
        onPressed();
      },
      child: child,
    );
  }
}
