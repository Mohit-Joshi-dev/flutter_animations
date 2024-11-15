import 'package:flutter/material.dart';
import 'package:flutter_animations/constants/app_constants.dart';
import 'package:flutter_animations/widgets/widgets.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppConstants.appPrimary,
      body: Column(
        children: [
          MainAppBar(),
          Expanded(
            child: Column(),
          ),
        ],
      ),
    );
  }
}
