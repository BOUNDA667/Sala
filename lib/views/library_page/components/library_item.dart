import 'package:flutter/material.dart';

class LibraryItem {
  final String title;
  final Widget icon;
  final VoidCallback onTap;

  LibraryItem({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}
