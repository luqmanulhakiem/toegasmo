import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toegasmo_app/src/core/themes/app_palette.dart';
import 'package:toegasmo_app/src/core/utils/theme_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool light = true;

  @override
  void initState() {
    super.initState();
    _loadThemePreference();
  }

  // Load the theme preference from shared_preferences
  void _loadThemePreference() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      light = prefs.getBool('isLightTheme') ?? true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeNotifier>(context);

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Switch Mode"),
            const SizedBox(height: 10),
            Switch(
              onChanged: (bool val) {
                setState(() {
                  light = val;
                  themeNotifier.setTheme(val);
                });
              },
              value: light,
              activeColor: AppPalette.primary,
            ),
          ],
        ),
      ),
    );
  }
}
