import 'package:flutter/material.dart';
import 'package:flutter_animations/constants/app_constants.dart';
import 'package:flutter_animations/controllers/sidebar_controller.dart';
import 'package:flutter_animations/models/models.dart';

class HomeGridTile extends StatefulWidget {
  const HomeGridTile({
    super.key,
    required this.template,
  });

  final Template template;

  @override
  State<HomeGridTile> createState() => _HomeGridTileState();
}

class _HomeGridTileState extends State<HomeGridTile> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () {
        SidebarController().selectSubView(SubViewName.detail);
      },
      child: Padding(
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
              // child: const Icon(
              //   Icons.flutter_dash,
              //   color: AppConstants.textWhite,
              // ),
              child: Image.network(
                widget.template.gifURL ?? '',
                errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'https://cdn.dribbble.com/users/1701248/screenshots/11283636/media/0402df490fd909229c23dcf6e3362f4c.gif',
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            Row(
              children: [
                Text(
                  widget.template.title,
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
      ),
    );
  }
}
