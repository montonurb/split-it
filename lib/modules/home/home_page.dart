import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: AppTheme.colors.backgroundSecondary,
      ),
    );
  }
}
