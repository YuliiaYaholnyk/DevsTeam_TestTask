import 'package:flutter/material.dart';

import 'package:devs_team_test/dto/image_urls_dto.dart';
import 'package:devs_team_test/dto/user.dto.dart';

class ImageDto {
  final String id;
  final String blurHash;
  final String description;
  final String altDescription;
  final ImageUrlsDto imageUrls;
  final int likes;
  final UserDto user;

  ImageDto({
    @required this.id,
    @required this.blurHash,
    @required this.description,
    @required this.altDescription,
    @required this.imageUrls,
    @required this.likes,
    @required this.user,
  });

  factory ImageDto.fromJson(Map<String, dynamic> json) {
    return ImageDto(
      id: json["id"],
      blurHash: json["blur_hash"],
      description: json["description"],
      altDescription: json["alt_description"],
      likes: json["likes"],
      imageUrls: ImageUrlsDto.fromJson(json["urls"]),
      user: UserDto.fromJson(json["user"]),
    );
  }
}
