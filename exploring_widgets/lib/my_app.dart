import 'package:exploring_widgets/pages/buttons.dart';
import 'package:exploring_widgets/pages/main_page.dart';
import 'package:exploring_widgets/pages/bottom_navigation_bar.dart';
import 'package:exploring_widgets/pages/tabs.dart';
import 'package:flutter/material.dart';
import 'package:exploring_widgets/theme/theme_constants.dart';
import 'package:exploring_widgets/theme/theme_manager.dart';

ThemeManager _themeManager = ThemeManager();

const String buttons = 'Buttons';
const String tabs = 'Tabs';
const String bottomNavigationBar = 'BottomNavigationBar';
const List<String> widgets = [buttons, tabs, bottomNavigationBar];

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void dispose() {
    _themeManager.removeListener(themeListener);
    super.dispose();
  }

  @override
  void initState() {
    _themeManager.addListener(themeListener);
    super.initState();
  }

  void themeListener() {
    if (mounted) {
      setState(() {});
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: _themeManager.themeMode,
      home: const MainPage(),
      routes: {
        buttons: (context) => const ButtonsPage(),
        bottomNavigationBar: (context) => const BottomNavigationBarPage(),
        tabs: (context) => const TabsPage()
      },
    );
  }
}
