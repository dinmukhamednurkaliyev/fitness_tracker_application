import 'package:fitness_tracker_application/appearance/appearance.dart';
import 'package:fitness_tracker_application/session/session.dart';
import 'package:flutter/material.dart';

class SessionAvailableSection extends StatelessWidget {
  const SessionAvailableSection({
    required this.item,
    super.key,
  });

  final List<SessionCardItem> item;

  @override
  Widget build(BuildContext context) {
    final padding = context.spacing;
    final text = context.text;
    final color = context.color;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: padding.sm,
      children: [
        Text(
          'Available Sessions',
          style: text.headlineSmall.withColor(color.textPrimary),
        ),
        Text(
          'Choose your workout session',
          style: text.bodyLarge.withColor(color.textPrimary),
        ),
        Column(
          spacing: padding.sm,
          children: item
              .map(
                (item) => SessionCard(
                  item: item,
                  onTap: () {},
                ),
              )
              .toList(),
        ),
      ],
    );
  }
}
