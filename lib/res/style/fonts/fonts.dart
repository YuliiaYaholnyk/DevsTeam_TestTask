import 'package:devs_team_test/res/style/colors/colors.dart';

import 'package:flutter/painting.dart';

import 'package:google_fonts/google_fonts.dart';

class Fonts {
  static TextStyle appBarTextStyle() {
    return GoogleFonts.roboto(
      color: BLACK,
      fontWeight: FontWeight.w600,
      fontSize: 25.0,
    );
  }

  static TextStyle userNameTextStyle() {
    return GoogleFonts.roboto(
      color: BLACK,
      fontWeight: FontWeight.bold,
      fontSize: 15.0,
    );
  }
}
