import 'package:flutter/material.dart';

class VideoBeranda {
  int jumlahLike = 0;
  int jumlahKomentar = 0;
  String? authorVideo;
  String? descriptionVideo;
  String? linkImageProfile;

  VideoBeranda(this.jumlahKomentar, this.jumlahLike, this.authorVideo,
      this.descriptionVideo, this.linkImageProfile);
}
