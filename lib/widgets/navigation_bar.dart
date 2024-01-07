import 'package:app_ui/pages/home_screen.dart';
import 'package:app_ui/pages/settings.dart';
import 'package:app_ui/themes/themes_data.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:provider/provider.dart';

class HomeBarConfig extends StatefulWidget {
  const HomeBarConfig({super.key});

  @override
  State<HomeBarConfig> createState() => _MainAppState();
}

class _MainAppState extends State<HomeBarConfig> {
  int selectedIndex = 0;
  final destinationViews = [
    const HomePage(),
    const SizedBox(),
    const SizedBox(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final themeData = Provider.of<ThemesChanger>(context, listen: true);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData.getTheme,
      home: Scaffold(
        body: destinationViews[selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          indicatorColor: Colors.white,
          destinations: [
            NavigationDestination(
              tooltip: "Home",
              selectedIcon: Icon(
                IconlyBold.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              icon: Icon(
                IconlyLight.home,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: "Home",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                IconlyBold.wallet,
                color: Theme.of(context).colorScheme.primary,
              ),
              icon: Icon(
                IconlyLight.wallet,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: "Wallet",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                IconlyBold.graph,
                color: Theme.of(context).colorScheme.primary,
              ),
              icon: Icon(
                IconlyLight.graph,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: "History",
            ),
            NavigationDestination(
              selectedIcon: Icon(
                IconlyBold.setting,
                color: Theme.of(context).colorScheme.primary,
              ),
              icon: Icon(
                IconlyLight.setting,
                color: Theme.of(context).colorScheme.primary,
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}