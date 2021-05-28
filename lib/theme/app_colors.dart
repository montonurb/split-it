import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get backgroundPrimary;
  Color get backgroundSecondary;
  Color get title;
  Color get button;
  Color get border;
}

class AppColorsDefault implements AppColors {
  @override
  Color get backgroundPrimary => Color(0xFFFFFFFF);
  Color get backgroundSecondary => Color(0xFF40B38C);
  Color get title => Color(0xFF40B28C);
  Color get button => Color(0xFF666666);
  Color get border => Color(0xFFDCE0E5);
}
