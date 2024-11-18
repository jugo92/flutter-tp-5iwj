import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  final String tag;
  final Color backgroundColor;
  final VoidCallback? onTap;

  const Item({
    required this.tag,
    required this.backgroundColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Chip(
        label: Text(tag),
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
