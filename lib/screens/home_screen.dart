import 'package:flutter/material.dart';
import 'package:flutter_animations/constants/app_constants.dart';
import 'package:flutter_animations/controllers/sidebar_controller.dart';
import 'package:flutter_animations/screens/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = SidebarController(selectedIndex: 0, extended: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppConstants.appPrimary,
      body: Row(
        children: [
          Sidebar(controller: _controller),
          Expanded(
              child: Center(
            child: _ScreensExample(
              controller: _controller,
            ),
          ))
        ],
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  const Sidebar({
    super.key,
    required this.controller,
  });

  final SidebarController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: ListView(
        children: [
          ListTile(
            leading: const Icon(
              Icons.home,
              color: AppConstants.textWhite,
            ),
            title: const Text(
              "Home",
              style: TextStyle(color: AppConstants.textWhite),
            ),
            onTap: () {
              controller.selectIndex(0);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.search,
              color: AppConstants.textWhite,
            ),
            title: const Text(
              "Search",
              style: TextStyle(color: AppConstants.textWhite),
            ),
            onTap: () {
              controller.selectIndex(1);
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.people,
              color: AppConstants.textWhite,
            ),
            title: const Text(
              "People",
              style: TextStyle(color: AppConstants.textWhite),
            ),
            onTap: () {
              controller.selectIndex(2);
            },
          ),
        ],
      ),
    );
  }
}

class _ScreensExample extends StatelessWidget {
  const _ScreensExample({
    required this.controller,
  });

  final SidebarController controller;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        final pageTitle = _getTitleByIndex(controller.selectedIndex);
        switch (controller.selectedIndex) {
          case 0:
            return const HomeGridView();
          default:
            return Text(
              pageTitle,
              style: theme.textTheme.headlineSmall,
            );
        }
      },
    );
  }
}

String _getTitleByIndex(int index) {
  switch (index) {
    case 0:
      return 'Home';
    case 1:
      return 'Search';
    case 2:
      return 'People';
    case 3:
      return 'Favorites';
    case 4:
      return 'Custom iconWidget';
    case 5:
      return 'Profile';
    case 6:
      return 'Settings';
    default:
      return 'Not found page';
  }
}

const primaryColor = Color(0xFF685BFF);
const canvasColor = Color(0xFF2E2E48);
const scaffoldBackgroundColor = Color(0xFF464667);
const accentCanvasColor = Color(0xFF3E3E61);
const white = Colors.white;
final actionColor = const Color(0xFF5F5FA7).withOpacity(0.6);
final divider = Divider(color: white.withOpacity(0.3), height: 1);
