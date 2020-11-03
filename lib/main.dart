import 'package:devs_team_test/application/application.dart';
import 'package:devs_team_test/store/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';

import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Store store = Store<AppState>(
    AppState.getAppReducer,
    initialState: AppState.initial(),
    middleware: [
      EpicMiddleware(AppState.getAppEpic),
      NavigationMiddleware<AppState>(),
    ],
  );

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(Application(store: store));
}
