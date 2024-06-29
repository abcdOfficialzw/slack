import 'package:flutter/material.dart';

import '../../../../utils/constants/dimens.dart';

class AppBarBottom {
  static final PreferredSize bottom = PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: Container(
      //  padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        //color: Colors.grey[300],
      ),
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(
              width: Dimens.padding.normal,
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  icon: const Icon(
                    Icons.search,
                    color: Color(0xFFC5B8D0),
                  ),
                  label: const Text(
                    "Jump to or search",
                    style: TextStyle(color: Color(0xFFC5B8D0)),
                  ),
                  filled: true,
                  fillColor: const Color(0xFF5D3A64),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.borderRadius.large),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: Dimens.spacing.small,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xFF5D3A64),
                  borderRadius: BorderRadius.all(
                      Radius.circular(Dimens.borderRadius.normal))),
              child: IconButton(
                  color: const Color(0xFFB6A5BF),
                  onPressed: () {},
                  icon: const Icon(Icons.filter_list)),
            ),
            SizedBox(
              width: Dimens.padding.normal,
            ),
          ],
        ),
      ),
    ),
  );
}
