import 'package:flutter/material.dart';
import 'package:widgets/presentations/screens/buttons/buttons_screen.dart';
import 'package:widgets/presentations/screens/cards/cards_screen.dart';
import 'package:widgets/presentations/screens/home/home_screen.dart';

import 'config/themes/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 3).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (_) => const ButtonsScreen(),
        '/cards': (_) => const CardsScreen(),
      },
    );
  }
}
