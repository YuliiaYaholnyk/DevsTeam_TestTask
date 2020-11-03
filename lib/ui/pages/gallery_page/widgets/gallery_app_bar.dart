import 'package:devs_team_test/res/string_const.dart';
import 'package:devs_team_test/res/style/colors/colors.dart';
import 'package:devs_team_test/res/style/fonts/fonts.dart';

import 'package:flutter/material.dart';

import 'package:flutter_screenutil/screenutil.dart';

class GalleryAppBar extends StatelessWidget with PreferredSizeWidget {
  const GalleryAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Container(
      color: WHITE_60,
      child: Center(
          child: Text(
            GALLERY,
            style: Fonts.appBarTextStyle(),
          ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 44.0);
}
