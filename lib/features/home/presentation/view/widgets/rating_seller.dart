import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class RatingSeller extends StatelessWidget {
  const RatingSeller(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.language,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final String language;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const SizedBox(
          width: 7,
        ),
        Text(
          language,
          style: Styles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text(
            count.toString(),
            style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
