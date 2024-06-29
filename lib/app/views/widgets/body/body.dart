import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../utils/constants/dimens.dart';
import 'highlights.dart';
import 'notification_tile.dart';

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

            /// Unread DMs
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Unread DMs",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: Dimens.spacing.normal,
                ),
                const NotificationTile(
                  label: "jendoe1",
                  icon: Icons.headphones,
                  notificationCount: 2,
                ),
                SizedBox(
                  height: Dimens.spacing.small,
                ),
                const NotificationTile(
                  label: "jackdoe",
                  //  icon: FontAwesomeIcons.house,
                  emoji: "🏡",
                  notificationCount: 1,
                ),
              ],
            ),
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            const Divider(color: Color(0xFFE0DEE1)),

            ///Mentions
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Mentions",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
                SizedBox(
                  height: Dimens.spacing.normal,
                ),
                const NotificationTile(
                  label: "landingpage-redesign",
                  leadingIcon: Icon(Icons.lock),
                  //icon: Icons.headphones,
                  notificationCount: 1,
                ),
              ],
            ),
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            const Divider(color: Color(0xFFE0DEE1)),

            ///Mentions
            SizedBox(
              height: Dimens.spacing.normal,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Unread",
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.keyboard_arrow_down_rounded)
                  ],
                ),
                SizedBox(
                  height: Dimens.spacing.normal,
                ),
                const NotificationTile(
                  label: "ux-workshop",
                  leadingIcon: Icon(Icons.tag),
                  //icon: Icons.headphones,
                  notificationCount: 0,
                ),
                SizedBox(
                  height: Dimens.spacing.small,
                ),
                const NotificationTile(
                  label: "Add channel",
                  fontWeight: FontWeight.w400,
                  leadingIcon: Icon(Icons.add),
                  //icon: Icons.headphones,
                  notificationCount: 0,
                ),
              ],
            ),
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
