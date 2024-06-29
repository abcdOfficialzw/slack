import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class AppBarActions {
  static final actions = [
    Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
          color: const Color(0xFFD6D4D6),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimens.borderRadius.small))),
      child: const Icon(
        Icons.person,
        size: 40,
        color: Color(0xFFF9F8FA),
      ),
    ),
    SizedBox(
      width: Dimens.padding.normal,
    )
  ];
}
