import 'package:flutter/material.dart';

class Sliding_text extends StatelessWidget {
  const Sliding_text({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidingAnimation,
        builder: (context, _) {
          return SlideTransition(
            position: slidingAnimation,
            child: const Text(
              'Read free books',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
