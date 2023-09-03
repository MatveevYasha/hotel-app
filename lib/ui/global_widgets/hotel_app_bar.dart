import 'package:flutter/material.dart';
import 'package:hotel_app/ui/theme/text_theme.dart';

class HotelAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const HotelAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Text(
        title,
        style: textTheme.titleLarge,
      ),
    );
  }
}
