import 'package:flutter/material.dart';
import 'package:slack/utils/theme/color_schemes.dart';
import 'package:slack/utils/theme/type.dart';

import 'app/views/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slack interface clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          textTheme: materialTextTheme()),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          textTheme: materialTextTheme()),
      themeMode: ThemeMode.light,
      home: const HomePage(),
    );
  }
}
