import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:split_it/theme/app_theme.dart';

abstract class AppTextStyles {
  TextStyle get titleSplash;
  TextStyle get textLogin;
  TextStyle get appBar;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubtitle1;
  TextStyle get infoCardSubtitle2;
  TextStyle get descriptionList;
  TextStyle get dateList;
  TextStyle get valueList;
  TextStyle get friendList;
  TextStyle get pagesCreateSplit1;
  TextStyle get pagesCreateSplit2;
  TextStyle get textCreateSplit;
  TextStyle get stepperNextButton;
  TextStyle get stepperTitle;
  TextStyle get stepperSubtitle;
  TextStyle get stepperNextButtonDisabled;
  TextStyle get textField;
  TextStyle get hintTextField;
  TextStyle get friendsName;
  TextStyle get pagesShowSplit1;
  TextStyle get textShowSplit;
  TextStyle get valueShowSplit;
  TextStyle get amountItemsShowSplit;
  TextStyle get nameItemShowSplit;
  TextStyle get dinnerSymbolValueShowPage;
  TextStyle get valueShowPage;
  TextStyle get totalValueItemsShowSplit;
  TextStyle get totalValueItemsShowSplitBold;
  TextStyle get remainderPay;
  TextStyle get remainderPayBold;
}

class AppTextStalesDefault implements AppTextStyles {
  @override
  TextStyle get textLogin => GoogleFonts.inter(
        color: AppTheme.colors.button,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get titleSplash => GoogleFonts.montserrat(
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

  @override
  TextStyle get pagesCreateSplit1 => GoogleFonts.roboto(
        color: AppTheme.colors.pagesCreateSplit1,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get pagesCreateSplit2 => GoogleFonts.roboto(
        color: AppTheme.colors.pagesCreateSplit2,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textCreateSplit => GoogleFonts.inter(
        color: AppTheme.colors.textCreateSplit,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperNextButton => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButton,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperTitle,
        fontSize: 24,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get stepperSubtitle => GoogleFonts.inter(
        color: AppTheme.colors.stepperSubtitle,
        fontSize: 24,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get textField => GoogleFonts.inter(
        color: AppTheme.colors.textField,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
        color: AppTheme.colors.hintTextField,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
        color: AppTheme.colors.stepperNextButtonDisabled,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      );

  @override
  TextStyle get friendsName => GoogleFonts.inter(
        color: AppTheme.colors.friendsName,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get pagesShowSplit1 => GoogleFonts.roboto(
        color: AppTheme.colors.pagesShowSplit1,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get textShowSplit => GoogleFonts.roboto(
        color: AppTheme.colors.pagesShowSplit1,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get valueShowSplit => GoogleFonts.roboto(
        color: AppTheme.colors.valueShowSplit,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get amountItemsShowSplit => GoogleFonts.inter(
        color: AppTheme.colors.amountItemsShowSplit,
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get nameItemShowSplit => GoogleFonts.inter(
        color: AppTheme.colors.nameItemShowSplit,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get dinnerSymbolValueShowPage => GoogleFonts.inter(
        color: AppTheme.colors.nameItemShowSplit,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get valueShowPage => GoogleFonts.inter(
        color: AppTheme.colors.nameItemShowSplit,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get totalValueItemsShowSplit => GoogleFonts.inter(
        color: AppTheme.colors.totalValueItemsShowSplit,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      );

  @override
  TextStyle get totalValueItemsShowSplitBold => GoogleFonts.inter(
        color: AppTheme.colors.totalValueItemsShowSplit,
        fontSize: 14,
        fontWeight: FontWeight.w700,
      );

  @override
  TextStyle get remainderPay => GoogleFonts.inter(
        color: AppTheme.colors.remainderPay,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get remainderPayBold => GoogleFonts.inter(
        color: AppTheme.colors.remainderPay,
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
}
