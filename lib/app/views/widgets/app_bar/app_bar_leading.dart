import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class AppBarLeading extends StatelessWidget {
  const AppBarLeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Dimens.padding.normal),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
            //color: Colors.red,
            image: const DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage(
                  "assets/mobbin-logo.jpeg",
                )),
            borderRadius:
                BorderRadius.all(Radius.circular(Dimens.borderRadius.large))),
      ),
    );
  }
}
