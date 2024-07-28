import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/screens.dart';

class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 300),
      itemCount: 8,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 15, top: 15),
          child: HomeGridTile(),
        );
      },
    );
  }
}
