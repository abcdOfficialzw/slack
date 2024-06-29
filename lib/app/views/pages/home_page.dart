import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slack/app/views/widgets/app_bar/app_bar_actions.dart';
import 'package:slack/app/views/widgets/app_bar/app_bar_bottom.dart';
import 'package:slack/utils/constants/dimens.dart';

import '../widgets/app_bar/app_bar_leading.dart';
import '../widgets/body/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF401645),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF340B39),
        shape: const CircleBorder(),
        child: const Icon(
          FontAwesomeIcons.edit,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
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
      body: const Body(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Color(0xFF1C1A1D),
        selectedLabelStyle: const TextStyle(
          color: Color(0xFF1C1A1D),
        ),
        selectedIconTheme: const IconThemeData(
          color: Color(0xFF1C1A1D),
          //fill: Color(0xFFF9DDD0)
        ),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.house), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comments), label: "DMs"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bell), label: "Activity"),
        ],
      ),
    );
  }
}
