import 'package:flutter/cupertino.dart';

abstract class AppColors {
  Color get background;
  Color get font;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => Color(0xFF40B38C);
  Color get font => Color(0xFF40B28C);
}
