import 'package:flutter/material.dart';

class ImageUrlsDto {
  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  ImageUrlsDto({
    @required this.raw,
    @required this.full,
    @required this.regular,
    @required this.small,
    @required this.thumb,
  });

  factory ImageUrlsDto.fromJson(Map<String, dynamic> json) {
    return ImageUrlsDto(
      raw: json["raw"],
      full: json["full"],
      regular: json["regular"],
      small: json["small"],
      thumb: json["thumb"],
    );
  }
}
