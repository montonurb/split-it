import 'package:flutter/material.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserModel user =
        ModalRoute.of(context)!.settings.arguments as UserModel;
    return Scaffold(
      appBar: AppBar(
        title: Text("${user.name}"),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network("${user.photoUrl}"),
        ),
        centerTitle: true,
        backgroundColor: AppTheme.colors.backgroundSecondary,
      ),
    );
  }
}
