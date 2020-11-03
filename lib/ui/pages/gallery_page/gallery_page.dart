import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_screenutil/screenutil.dart';

import 'package:devs_team_test/helpers/get_random_margin.dart';
import 'package:devs_team_test/store/app/app_state.dart';
import 'package:devs_team_test/ui/layouts/main_layout.dart';
import 'package:devs_team_test/ui/pages/gallery_page/gallery_page_view_model.dart';
import 'package:devs_team_test/ui/pages/gallery_page/widgets/gallery_app_bar.dart';
import 'package:devs_team_test/ui/pages/gallery_page/widgets/image_tile.dart';

class GalleryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainLayout(
      appBar: GalleryAppBar(),
      body: StoreConnector<AppState, GalleryPageViewModel>(
          converter: GalleryPageViewModel.fromStore,
          onInitialBuild: (GalleryPageViewModel viewModel) =>
              viewModel.downloadGallery(),
          builder: (BuildContext context, GalleryPageViewModel viewModel) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: getRandomMargin()),
                      width: ScreenUtil.screenWidth / 2 - 10,
                      child: ListView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: viewModel.gallery.length ~/ 2,
                        itemBuilder: (BuildContext context, int i) {
                          return InkWell(
                            onTap: () => viewModel.showBigImage(
                              viewModel.gallery[i].blurHash,
                              viewModel.gallery[i].imageUrls.full,
                            ),
                            child: ImageTile(
                              imageUrl: viewModel.gallery[i].imageUrls.small,
                              likes: viewModel.gallery[i].likes,
                              userName: viewModel.gallery[i].user.userName,
                              userPhotoUrl: viewModel
                                  .gallery[i].user.profileImageDto.small,
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      width: ScreenUtil.screenWidth / 2 - 10,
                      margin: EdgeInsets.only(top: getRandomMargin()),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: viewModel.gallery.length -
                            viewModel.gallery.length ~/ 2,
                        itemBuilder: (BuildContext context, int i) {
                          return InkWell(
                            onTap: () => viewModel.showBigImage(
                              viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .blurHash,
                              viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .imageUrls
                                  .full,
                            ),
                            child: ImageTile(
                              imageUrl: viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .imageUrls
                                  .small,
                              userPhotoUrl: viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .user
                                  .profileImageDto
                                  .small,
                              userName: viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .user
                                  .userName,
                              likes: viewModel
                                  .gallery[i + viewModel.gallery.length ~/ 2]
                                  .likes,
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
