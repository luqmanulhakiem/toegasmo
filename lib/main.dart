import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toegasmo_app/src/core/themes/app_theme.dart';
import 'package:toegasmo_app/src/core/utils/theme_notifier.dart';
import 'package:toegasmo_app/src/features/main/presentation/pages/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(builder: (context, themeNotifier, _) {
      return MaterialApp(
        title: 'Toegasmo',
        debugShowCheckedModeBanner: false,
        theme: themeNotifier.isLightTheme
            ? AppTheme.lightThemeMode
            : AppTheme.darkThemeMode,
        darkTheme: AppTheme.darkThemeMode,
        themeMode: ThemeMode.system,
        home: const HomePage(),
      );
    });
  }
}
