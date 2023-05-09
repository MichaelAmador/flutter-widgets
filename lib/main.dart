import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/presentations/providers/theme_provider.dart';
import 'config/router/app_router.dart';

void main() {
  // HttpOverrides.global = MyHttpOverrides();

  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends ConsumerWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context, ref) {
    // final isDarkMode = ref.watch(isDarkModeProvider);
    // final selectedColor = ref.watch(selectedColorProvider);
    final appTheme = ref.watch(themeNotifierProvider);
    return MaterialApp.router(
        title: 'Flutter Widgets',
        routerConfig: appRouter,
        debugShowCheckedModeBanner: false,
        theme: appTheme.getTheme());
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
