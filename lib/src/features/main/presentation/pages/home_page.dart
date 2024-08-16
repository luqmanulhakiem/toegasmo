import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:toegasmo_app/src/core/common/widgets/category_widget.dart';
import 'package:toegasmo_app/src/core/common/widgets/circle_button_widget.dart';
import 'package:toegasmo_app/src/core/common/widgets/gap_widget.dart';
import 'package:toegasmo_app/src/core/common/widgets/search_widget.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    height:
                        MediaQuery.of(context).viewInsets.top + kToolbarHeight),
                // User Info
                const GapWidget(gap: 12),
                _userInfo(),

                // Search
                const GapWidget(gap: 26),
                _searchSection(themeNotifier),

                // Categories
                const GapWidget(gap: 26),
                const Text("Categories"),
                const GapWidget(gap: 8),
                _categoryList()

                // Task Section
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _categoryList() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      height: 80,
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(20, (i) {
          return const CategoryWidget();
        })),
      ),
    );
  }

  Row _searchSection(ThemeNotifier themeNotifier) {
    return Row(
      children: [
        const Expanded(child: SearchWidget()),
        const GapWidget(gap: 10),
        CircleButtonWidget(
          onPress: () {
            setState(() {
              light = !light;
              themeNotifier.setTheme(light);
            });
          },
          icon: light ? Icons.dark_mode : Icons.light_mode,
        )
      ],
    );
  }

  Row _userInfo() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi, Luqman"),
            Text("10 task pending"),
          ],
        ),
        CircleAvatar(
          child: Text("L"),
        )
      ],
    );
  }
}
