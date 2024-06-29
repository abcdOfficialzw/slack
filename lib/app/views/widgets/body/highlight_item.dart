import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class HighlightItem extends StatelessWidget {
  const HighlightItem({
    super.key,
    required this.icon,
    required this.label,
    required this.tagline,
    required this.isActive,
  });
  final IconData icon;
  final String label;
  final String tagline;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      padding: EdgeInsets.all(Dimens.padding.normal),
      decoration: BoxDecoration(
          color: isActive ? const Color(0xFFF4EFF4) : null,
          border: Border.all(width: 1, color: Color(0xFFE0DEE1)),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimens.borderRadius.large))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFF340B39),
          ),
          Text(
            label,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF340B39),
                ),
          ),
          Text(
            tagline,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: const Color(0xFF340B39),
                ),
          ),
        ],
      ),
    );
  }
}
