import 'package:flutter/material.dart';
import 'package:flutter_animations/constants/app_constants.dart';
import 'package:flutter_animations/models/models.dart';

class HomeGridTile extends StatelessWidget {
  const HomeGridTile({
    super.key,
    required this.template,
  });

  final Template template;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: AppConstants.appSecondary,
            ),
            height: 250,
            width: 500,
            alignment: Alignment.center,
            child: const Icon(
              Icons.flutter_dash,
              color: AppConstants.textWhite,
            ),
          ),
          Row(
            children: [
              Text(
                template.title,
                style: theme.textTheme.titleMedium,
              ),
              const Spacer(),
              Text(
                "18k Views",
                style: theme.textTheme.bodySmall,
              ),
            ],
          )
        ],
      ),
    );
  }
}
