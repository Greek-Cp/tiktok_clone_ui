import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tiktok_clone_ui/controller/controller_account.dart';
import 'package:tiktok_clone_ui/page/page_akun_saya.dart';

import 'package:tiktok_clone_ui/page/page_halaman_utama.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    return ChangeNotifierProvider<ControllerAccount>(
      create: (context) => ControllerAccount(),
      child: MaterialApp(
        initialRoute: PageHalamanUtama.routingName.toString(),
        routes: {
          PageHalamanUtama.routingName.toString(): (context) =>
              PageHalamanUtama(),
          PageAkunSaya.routeName.toString(): (context) => PageAkunSaya()
        },
        home: Scaffold(
          body: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
