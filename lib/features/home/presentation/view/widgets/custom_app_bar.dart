import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 30, top: 45, bottom: 20),
      child: Row(
        children: [
          Image.asset(
            Assets.logo,
            height: 20,
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.ksearchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 24,
            ),
          ),
        ],
      ),
    );
  }
}