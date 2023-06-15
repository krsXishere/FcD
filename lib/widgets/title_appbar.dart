import 'package:bandungan/common/theme.dart';
import 'package:flutter/material.dart';

class TitleAppBar extends StatelessWidget {
  final String? text;
  const TitleAppBar({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text.toString(),
      style: primaryTextStyle.copyWith(
        color: white,
      ),
    );
  }
}
