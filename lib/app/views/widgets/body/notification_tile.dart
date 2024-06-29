import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.label,
    this.icon,
    required this.notificationCount,
    this.emoji,
    this.leadingIcon,
    this.fontWeight,
  });

  final String label;
  final IconData? icon;
  final int notificationCount;
  final String? emoji;
  final Icon? leadingIcon;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(
            width: 30,
            height: 30,
            child: leadingIcon ??
                ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(Dimens.borderRadius.small),
                  ),
                  child: Image.asset("assets/IMG_6577_Original 6.jpg"),
                ),
          ),
          SizedBox(
            width: Dimens.spacing.normal,
          ),
          Text(
            label,
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(fontWeight: fontWeight ?? FontWeight.bold),
          ),
          Icon(
            icon,
            color: const Color(0xFFE6E4E7),
          ),
          Text(emoji ?? "", style: Theme.of(context).textTheme.bodyLarge!),
          const Spacer(),
          notificationCount == 0
              ? Container()
              : Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      color: const Color(0xFF793F86),
                      borderRadius: BorderRadius.all(
                          Radius.circular(Dimens.borderRadius.small))),
                  child: Center(
                      child: Text(
                    notificationCount.toString(),
                    style: const TextStyle(color: Colors.white),
                  )))
        ],
      ),
    );
  }
}
