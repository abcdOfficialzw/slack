import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';
import 'highlights.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Dimens.spacing.normal),
      child: Container(
        padding: EdgeInsets.all(Dimens.padding.medium),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimens.borderRadius.large),
            topRight: Radius.circular(Dimens.borderRadius.large),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Highlights(),
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            const Divider(color: Color(0xFFE0DEE1)),
          ],
        ),
      ),
    );
  }
}
