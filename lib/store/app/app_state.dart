import 'package:devs_team_test/store/dialog/dialog_state.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_epics.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_state.dart';

import 'package:redux_epics/redux_epics.dart';

class AppState {
  final GalleryState galleryState;
  final DialogModuleState dialogModuleState;

  AppState({
    this.galleryState,
    this.dialogModuleState,
  });

  factory AppState.initial() {
    return AppState(
      galleryState: GalleryState.initial(),
      dialogModuleState: DialogModuleState.initial(),
    );
  }

  static AppState getAppReducer(AppState state, dynamic action) {
    const String TAG = '[appReducer]';

    print('$TAG => <appReducer> => action: ${action.runtimeType}');
    return AppState(
      galleryState: state.galleryState.reducer(action),
      dialogModuleState: state.dialogModuleState.reducer(action),
    );
  }

  static final getAppEpic = combineEpics<AppState>([
    GalleryEpics.indexEpic,
  ]);
}
