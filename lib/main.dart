import 'package:app_ui/themes/themes_data.dart';
import 'package:app_ui/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final bool isDark =
      (await SharedPreferences.getInstance()).getBool('isDark') ?? false;
  runApp(
    ChangeNotifierProvider(
        create: (context) => ThemesChanger(isDark: isDark),
        child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeBarConfig();
  }
}
