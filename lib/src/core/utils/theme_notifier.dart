import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isLightTheme = true;

  bool get isLightTheme => _isLightTheme;

  ThemeNotifier() {
    _loadTheme();
  }

  void _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _isLightTheme = prefs.getBool('isLightTheme') ?? true;
    notifyListeners(); // Notify listeners when the theme is loaded
  }

  void setTheme(bool isLight) async {
    _isLightTheme = isLight;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLightTheme', isLight);
    notifyListeners(); // Notify listeners when the theme is changed
  }
}
