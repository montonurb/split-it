import 'package:flutter/material.dart';
import 'package:split_it/theme/app_theme.dart';

class CreateSplitAppBarWidget extends PreferredSize {
  final VoidCallback onTapBack;
  final int actualPage;
  final int size;
  CreateSplitAppBarWidget({
    required this.onTapBack,
    required this.actualPage,
    required this.size,
  }) : super(
          preferredSize: Size.fromHeight(60),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppTheme.colors.backButton,
                  ),
                  onPressed: onTapBack,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 24.0),
                  child: Text.rich(TextSpan(
                      text: "0${actualPage + 1}",
                      style: AppTheme.textStyles.pagesCreateSplit1,
                      children: [
                        TextSpan(
                            text: " - 0$size",
                            style: AppTheme.textStyles.pagesCreateSplit2)
                      ])),
                ),
              ],
            ),
          ),
        );
}
