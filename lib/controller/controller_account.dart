import 'package:flutter/material.dart';
import 'package:tiktok_clone_ui/model/akun.dart';
import 'package:provider/provider.dart';

class ControllerAccount extends ChangeNotifier {
  Akun? akunSaya;
  void setAkun(
    String? namaAkun,
    String? jumlahFollower,
    String? totalFollowing,
    String? totalLikes,
  ) {
    Akun akunBaru = Akun(namaAkun, jumlahFollower, totalFollowing, totalLikes);
    akunSaya = akunBaru;
    print("Akun Telah Di Set");
    notifyListeners();
  }
}
