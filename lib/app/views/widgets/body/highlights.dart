import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants/dimens.dart';
import 'highlight_item.dart';

class HighlightItemFields {
  HighlightItemFields(
      {required this.label,
      required this.tagLine,
      required this.isActive,
      required this.icon});
  final String label;
  final String tagLine;
  final bool isActive;
  final IconData icon;
}

class Highlights extends StatelessWidget {
  const Highlights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<HighlightItemFields> highlightItemFields = [
      HighlightItemFields(
          label: "Catch up",
          tagLine: "5 new",
          icon: Icons.assignment_outlined,
          isActive: true),
      HighlightItemFields(
          label: "Threads",
          tagLine: "1 mention",
          icon: FontAwesomeIcons.commenting,
          isActive: true),
      HighlightItemFields(
          label: "Huddles",
          tagLine: "1 live",
          icon: Icons.headphones,
          isActive: true),
      HighlightItemFields(
          label: "Later",
          tagLine: "2 items",
          icon: Icons.assignment_outlined,
          isActive: true),
    ];
    return SizedBox(
      height: 100,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (c, i) {
            return HighlightItem(
                label: highlightItemFields[i].label,
                tagline: highlightItemFields[i].tagLine,
                icon: highlightItemFields[i].icon,
                isActive: highlightItemFields[i].isActive);
          },
          separatorBuilder: (c, i) {
            return SizedBox(
              width: Dimens.spacing.normal,
            );
          },
          itemCount: 4),
    );
  }
}
