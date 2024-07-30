import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //TODO: Add logo here
            Text("Flutter Animations",
                style: Theme.of(context).textTheme.titleLarge),
            Text("Login", style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ),
    );
  }
}
