import 'package:flutter/material.dart';

class ListAnimationBehaviorUtil extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return GlowingOverscrollIndicator(
      color: Colors.white60,
      axisDirection: axisDirection,
      child: child,
    );
  }
}
