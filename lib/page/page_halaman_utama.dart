import 'package:flutter/material.dart';
import 'package:tiktok_clone_ui/page/PageVideoHalamanSaya.dart';
import 'package:tiktok_clone_ui/page/page_akun_saya.dart';

class PageHalamanUtama extends StatefulWidget {
  static String? routingName = "/PageHalamanUtama";
  @override
  State<PageHalamanUtama> createState() => _PageHalamanUtamaState();
}

class _PageHalamanUtamaState extends State<PageHalamanUtama> {
  int currentIndex = 0;
  List<Widget> listPage = [
    PageVideoHalamanSaya(),
    Text("Hello"),
    Text("Hello"),
    Text("Hello"),
    PageAkunSaya()
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: listPage[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ic_nav_home.png"),
                color: Colors.white,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ic_nav_search.png"),
                color: Colors.grey,
              ),
              label: "Discover"),
          BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Image.asset(
                  "assets/ic_nav_tambah.png",
                ),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ic_nav_inbox.png"),
                color: Colors.grey,
              ),
              label: "Inbox"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/ic_nav_akun_saya.png"),
                color: Colors.grey,
              ),
              label: "Me"),
        ],
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}
