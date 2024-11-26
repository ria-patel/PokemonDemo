// Flutter imports:
import 'package:flutter/material.dart';

class AppTheme {
  static final theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade600),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.lightBlue.shade100,
      titleTextStyle: const TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    ),
    useMaterial3: true,
  );
}
