import 'package:devs_team_test/dto/image_dto.dart';
import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/store/dialog/dialog_selector.dart';
import 'package:devs_team_test/store/gallery_page_state/gallery_selector.dart';

import 'package:redux/redux.dart';

class GalleryPageViewModel {
  final void Function() downloadGallery;
  final List<ImageDto> gallery;
  final void Function(String blurHash, String url) showBigImage;

  GalleryPageViewModel({
    this.downloadGallery,
    this.gallery,
    this.showBigImage,
  });

  static GalleryPageViewModel fromStore(Store<AppState> store) {
    return GalleryPageViewModel(
      gallery: GallerySelector.getGallery(store),
      downloadGallery: GallerySelector.downloadGallery(store),
      showBigImage: DialogSelectors.showBigImagePopUp(store),
    );
  }
}
