import 'package:flutter/material.dart';
import 'package:split_it/modules/home/widgets/add_button_widget.dart';
import 'package:split_it/modules/login/widgets/models/user_model.dart';
import 'package:split_it/theme/app_theme.dart';

class AppBarWidget extends PreferredSize {
  final UserModel user;
  final VoidCallback onTapAddButton;

  AppBarWidget({required this.user, required this.onTapAddButton})
      : super(
          preferredSize: Size.fromHeight(250),
          child: Container(
            height: 250,
            color: AppTheme.colors.backgroundSecondary,
            child: Padding(
              padding: const EdgeInsets.only(top: 62),
              child: ListTile(
                trailing: AddButtonWidget(onTap: onTapAddButton),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                      user.photoUrl!,
                      width: 67,
                      height: 62,
                    )),
                title: Text(
                  user.name!,
                  style: AppTheme.textStyles.appBar,
                ),
              ),
            ),
          ),
        );
}
