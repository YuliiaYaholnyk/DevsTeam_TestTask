import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_navigation/flutter_redux_navigation.dart';

import 'package:redux/redux.dart';

import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/ui/pages/gallery_page/gallery_page.dart';
import 'package:devs_team_test/utils/list_animation_util.dart';

class Application extends StatefulWidget {
  final Store<AppState> store;

  Application({@required this.store});

  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: widget.store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: (context, child) {
          return ScrollConfiguration(
            behavior: ListAnimationBehaviorUtil(),
            child: child,
          );
        },
        navigatorKey: NavigatorHolder.navigatorKey,
        home: GalleryPage(),
      ),
    );
  }
}
