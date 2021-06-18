import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get appBar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubtitle1;
  TextStyle get infoCardSubtitle2;
  TextStyle get descriptionList;
  TextStyle get dateList;
  TextStyle get valueList;
  TextStyle get friendList;
}

class AppTextStalesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get title => GoogleFonts.montserrat(
        color: AppTheme.colors.title,
        fontSize: 40,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        color: AppTheme.colors.titleAppBar,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
        color: AppTheme.colors.infoCardTitle,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get infoCardSubtitle1 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubtitle1,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get infoCardSubtitle2 => GoogleFonts.inter(
        color: AppTheme.colors.infoCardSubtitle2,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get descriptionList => GoogleFonts.inter(
        color: AppTheme.colors.descriptionList,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get dateList => GoogleFonts.inter(
        color: AppTheme.colors.dateList,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get valueList => GoogleFonts.inter(
        color: AppTheme.colors.valueList,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get friendList => GoogleFonts.inter(
        color: AppTheme.colors.friendList,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
}
