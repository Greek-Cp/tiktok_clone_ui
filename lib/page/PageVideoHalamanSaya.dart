import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageVideoHalamanSaya extends StatefulWidget {
  static String? routeName = "/PageVideoHalamanSaya";

  @override
  State<PageVideoHalamanSaya> createState() => _PageVideoHalamanSayaState();
}

class VideoLewat extends StatelessWidget {
  String? urlGambar = "";
  VideoLewat(this.urlGambar);
  /*
   - assets/ic_heart_vids.png
    - assets/ic_comment_vids.png
    - assets/ic_share_vids.png
 */

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(builder: (context, child) {
      return Scaffold(
        body: Stack(
          children: [
            Positioned.fill(
                child: Image.network(urlGambar.toString(), fit: BoxFit.cover)),
            Positioned.fill(
                right: 10,
                bottom: 40.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://scontent.fsub6-7.fna.fbcdn.net/v/t39.30808-6/342024426_143428641871213_7317264539283437305_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFxV2x4fsoYmCXG7qM4IKtj6I-uW3kGohLoj65beQaiEs8bDmhJ2hzco6cyRqafV9Bor6pD9bgMiDe_ydZeIIHO&_nc_ohc=_gZgE6I81KQAX83sqZn&_nc_zt=23&_nc_ht=scontent.fsub6-7.fna&oh=00_AfCfSDN_ZApKCBEjq5T6Y_-CBbENg9mc2u6jJDznjrxVVw&oe=645472A3"),
                          radius: 30.r,
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Image.asset(
                          "assets/ic_heart_vids.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          "327.1k",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp),
                        ),
                        Image.asset(
                          "assets/ic_comment_vids.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp),
                          textAlign: TextAlign.center,
                        ),
                        Image.asset(
                          "assets/ic_share_vids.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          "327.1k",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 15.sp),
                        ),
                        SizedBox(
                          height: 25.h,
                        ),
                        Image.asset(
                          "assets/ic_disc_vids.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                      ],
                    ),
                  ],
                )),
            Positioned.fill(
              bottom: 50,
              left: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: "@yanuarcoding",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w800),
                    ),
                    TextSpan(
                      text: ". 1-28",
                      style: TextStyle(
                          color: Color.fromARGB(255, 235, 235, 235),
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w500),
                    ),
                  ])),
                  SizedBox(
                    height: 10.h,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Hallo ini deksripsi asdsadsadas \nanjay ",
                        style: TextStyle(fontSize: 15.sp)),
                    TextSpan(
                        text: "#fyp",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.bold))
                  ])),
                  SizedBox(
                    height: 10.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/ic_music_vids.png",
                        width: 20.w,
                        height: 20.h,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        "Roddy Roundich - The Rou",
                        style: TextStyle(color: Colors.white, fontSize: 15.sp),
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned.fill(
              top: 90,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Following",
                      style: TextStyle(fontSize: 20.sp, color: Colors.white)),
                  Text(" | ",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Color.fromARGB(255, 202, 202, 202))),
                  Text("For You",
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Color.fromARGB(255, 202, 202, 202)))
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}

class _PageVideoHalamanSayaState extends State<PageVideoHalamanSaya> {
  static double? getPositionPage = 0.0;
  List<String> imageList = [
    "https://avatars.mds.yandex.net/i?id=6911fb9d0dbedfc4e11b986452897a22-5483025-images-thumbs&n=13",
    "https://www.pixelstalk.net/wp-content/uploads/2016/06/iPhone-Wallpapers-The-Beach.jpg",
    "https://i2.wp.com/wallpapercave.com/wp/wp6628433.jpg",
    "https://media.wallpaperchill.com/nature-wallpapers/tropics-palm-trees-ocean-vacation-shore-wallpaper-1080x1920.jpg",
    "https://ru-static.z-dn.net/files/df5/fa6f7717430555446dee77410d19674f.jpg",
    "https://i.pinimg.com/originals/e2/a3/7b/e2a37b419501e7ba4e3634d21c3a7407.jpg",
    "https://iphone-wallpaper.pics/wallpaper/y/o/yourname01_1ffe20fc90bfaf721451f3dbec93350d_raw.jpg",
    "https://i.pinimg.com/originals/a4/43/08/a44308024bec74d7632092b0135f1509.jpg",
    "https://image.winudf.com/v2/image1/Y29tLmVkaXN1cnlhbnRvLkxhbmRzY2FwZXJzYmFydUhEX3NjcmVlbl8xXzE1ODI4OTc0MzhfMDY5/screen-1.jpg?fakeurl=1&type=.jpg",
    "https://image.winudf.com/v2/image1/Y29tLm1vdW50LmZ1amkud2FsbHBhcGVyLm1vdW50ZnVqaXdhbGxwYXBlcl9zY3JlZW5fOF8xNTU4ODI4NDIxXzAzNw/screen-8.jpg?fakeurl=1&type=.jpg",
    "https://wallpapershome.ru/images/wallpapers/alpi-1080x1920-4k-hd-franciya-gori-oduvanchik-luga-nebo-5276.jpg",
    "https://avatars.mds.yandex.net/i?id=d862b91609724a08dc2e6bc21eb0e21ede68199d-5383459-images-thumbs&n=13"
  ];
  static int currentIndex = 0;
  Color colorPage = Colors.pink;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    PageController pageController = PageController();
    pageController.addListener(
      () {
        getPositionPage = pageController.page;
        print(getPositionPage.toString() + " get poisition page ");
      },
    );
    return Scaffold(
        body: PageView.builder(
      itemCount: imageList.length,
      scrollDirection: Axis.vertical //////
      ,
      controller: pageController,
      itemBuilder: (context, index) {
        currentIndex = index;
        return VideoLewat(imageList[index]);
      },
    ));
  }
}
