import 'package:flutter/material.dart';
import 'package:slack/app/views/widgets/app_bar/app_bar_actions.dart';
import 'package:slack/app/views/widgets/app_bar/app_bar_bottom.dart';
import 'package:slack/utils/constants/dimens.dart';

import '../widgets/app_bar/app_bar_leading.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF401645),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: const AppBarLeading(),
        title: Text(
          "Cool Mobbin",
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
        ),
        centerTitle: false,
        actions: AppBarActions.actions,
        bottom: AppBarBottom.bottom,
      ),
    );
  }
}
