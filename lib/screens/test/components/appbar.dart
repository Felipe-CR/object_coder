import 'package:flutter/material.dart';

customAppBar() {
  return PreferredSize(
    preferredSize: const Size.fromHeight(59),
    child: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: const Text(
        "Test"
      ),
      centerTitle: true,
    ),
  );
}