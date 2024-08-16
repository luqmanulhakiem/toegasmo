import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toegasmo_app/src/core/themes/app_palette.dart';

class CircleButtonWidget extends StatefulWidget {
  final Color color;
  final IconData icon;
  final VoidCallback onPress;
  const CircleButtonWidget(
      {super.key,
      this.color = AppPalette.primary,
      required this.icon,
      required this.onPress});

  @override
  State<CircleButtonWidget> createState() => _CircleButtonWidgetState();
}

class _CircleButtonWidgetState extends State<CircleButtonWidget> {
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
    return IconButton.filled(
      style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(widget.color),
          elevation: const WidgetStatePropertyAll(10),
          shadowColor: WidgetStatePropertyAll(widget.color)),
      onPressed: widget.onPress,
      icon: Icon(widget.icon),
    );
  }
}
