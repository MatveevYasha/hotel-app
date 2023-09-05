import 'package:flutter/material.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

import '../theme/color_scheme.dart';

class HotelAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool addBackButton;

  const HotelAppBar({
    super.key,
    required this.title,
    this.addBackButton = true,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: colorScheme.onPrimary,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: addBackButton,
      title: Text(
        title,
        style: textTheme.titleLarge,
      ),
    );
  }
}
