import 'package:flutter/material.dart';

import '../common/theme.dart';

class DrawerItem extends StatelessWidget {
  final String? text;
  final Function()? onTap;

  const DrawerItem({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text.toString(),
        style: primaryTextStyle.copyWith(
          fontWeight: regular,
        ),
      ),
      onTap: onTap,
    );
  }
}
