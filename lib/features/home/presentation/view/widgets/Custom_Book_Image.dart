import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //the rate is width / height .... constant
      aspectRatio: 2.7 / 4,
      child: Container(
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.amberAccent,
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              Assets.testImage,
            ),
          ),
        ),
      ),
    );
  }
}
