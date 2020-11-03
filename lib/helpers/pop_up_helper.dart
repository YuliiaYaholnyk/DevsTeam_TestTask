import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';

import 'package:devs_team_test/interfaces/dialog.dart' as dialog;

class PopupHelper {
  // region [Initialization]
  static const String TAG = '[PopupHelper]';

  PopupHelper._privateConstructor();

  static final PopupHelper _instance = PopupHelper._privateConstructor();

  static PopupHelper get instance => _instance;

// endregion

  void show(dialog.Dialog dialog) {
    showDialog(
      context: NavigatorHolder.navigatorKey?.currentState?.overlay?.context,
      builder: (BuildContext ctx) {
        return dialog.widget();
      },
    );
  }
}
