import 'package:devs_team_test/dto/image_dto.dart';
import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_actions.dart';

import 'package:redux/redux.dart';


class GallerySelector {
  static const String TAG = '[GallerySelector]';

  static List<ImageDto> getGallery(Store<AppState> store) {
    return store.state.galleryState.gallery;
  }

  static void Function() downloadGallery(Store<AppState> store) {
    return () => store.dispatch(DownloadGallery());
  }
}
