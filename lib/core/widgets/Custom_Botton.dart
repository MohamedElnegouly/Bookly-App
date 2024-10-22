import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomBotton extends StatelessWidget {
  const CustomBotton({
    super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text,
    this.fontsize, this.onpressed,
  });
  final double? fontsize;
  final String text;
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final void Function()? onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onpressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle18.copyWith(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
