import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageAkunSaya extends StatefulWidget {
  static String? routeName = "/PageAkunSaya";

  @override
  State<PageAkunSaya> createState() => _PageAkunSayaState();
}

class _PageAkunSayaState extends State<PageAkunSaya>
    with TickerProviderStateMixin {
  late TabController tabController;
  late List<Widget> ListTab = [
    Image.asset(
      "assets/ic_video_saya.png",
      width: 25,
      height: 25,
    ),
    Image.asset(
      "assets/ic_like.png",
      width: 25,
      height: 25,
    )
  ];
  late List<Widget> myPage = [
    widgetMyVideo(),
    Center(
      child: Text(
        "Mohon Maaf Video Yang Disukai Hanya Bisa Dilihat Oleh Pengguna",
        style: TextStyle(backgroundColor: Colors.amberAccent),
      ),
    )
  ];
  int current_index = 0;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: ListTab.length, vsync: this);
  }

  Widget widgetMyVideo() {
    return Center(
      child: GridView.builder(
        physics: PageScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 1,
            mainAxisSpacing: 1,
            childAspectRatio: 0.63),
        itemBuilder: (context, index) {
          var rng = new Random();
          var randomNumber = 10000 + rng.nextInt(10000000 - 10000);

          return Container(
            child: Stack(
              children: [
                Image.network(imageBaseFeed +
                    "/" +
                    myFeed[index]['id'].toString() +
                    "/" +
                    reso),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5.w,
                        ),
                        Image.asset(
                          "assets/ic_total_play.png",
                          width: 14.w,
                          height: 14.h,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        Text(
                          "${formatNumber(randomNumber)}",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.sp),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        itemCount: myFeed.length,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ScreenUtilInit(
      builder: (context, child) {
        return Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 40.h,
                  ),
                  Header(),
                  SizedBox(
                    height: 10.h,
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://scontent.fsub6-7.fna.fbcdn.net/v/t39.30808-6/342024426_143428641871213_7317264539283437305_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFxV2x4fsoYmCXG7qM4IKtj6I-uW3kGohLoj65beQaiEs8bDmhJ2hzco6cyRqafV9Bor6pD9bgMiDe_ydZeIIHO&_nc_ohc=_gZgE6I81KQAX83sqZn&_nc_zt=23&_nc_ht=scontent.fsub6-7.fna&oh=00_AfCfSDN_ZApKCBEjq5T6Y_-CBbENg9mc2u6jJDznjrxVVw&oe=645472A3"),
                    radius: 50.r,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    "@yanuarcoding",
                    style:
                        TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  AccountInformation(),
                  SizedBox(
                    height: 10.h,
                  ),
                  ButtonBottom(),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    """ 👋 Hi, I’m Lee - 10k 🎯\n•👨🏻‍💻 Android Engineer\n•🏂 Konten Kreator Coding
                    """,
                    style: TextStyle(fontSize: 15.sp),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10.h, bottom: 10.h),
                    child: TabBar(
                      tabs: ListTab,
                      controller: tabController,
                      indicatorColor: Color.fromARGB(255, 50, 50, 50),
                      indicatorSize: TabBarIndicatorSize.label,
                      dividerColor: Colors.red,
                    ),
                  ),
                  SizedBox(
                    height: double.maxFinite,
                    child: TabBarView(
                      children: myPage,
                      controller: tabController,
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String formatNumber(int number) {
    if (number < 10000) {
      // Jika angka kurang dari 10k, kembalikan angka asli
      return number.toString();
    } else if (number < 100000) {
      // Jika angka kurang dari 100k, bagi dengan 1000 dan tambahkan 'k'
      var thousands = (number / 1000).toStringAsFixed(0);
      return '$thousands k';
    } else if (number < 1000000) {
      // Jika angka kurang dari 1jt, bagi dengan 1000 dan tambahkan 'k'
      var thousands = (number / 1000).toStringAsFixed(0);
      return '$thousands k';
    } else {
      // Jika angka 1jt atau lebih, bagi dengan 1 juta dan tambahkan 'jt'
      var millions = (number / 1000000).toStringAsFixed(0);
      return '$millions jt';
    }
  }

  String imageBaseFeed = "https://picsum.photos/id/";

  String reso = "512/812";
  List<Map> myFeed = List.generate(
      100,
      (index) => {
            "id": Random().nextInt(25) + 1,
          });

  Widget BottomProfileNav() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Image.asset(
              "assets/ic_video_saya.png",
              width: 30,
              height: 30,
            ),
            Divider(
              color: Colors.grey,
              height: 2,
            )
          ],
        ),
        SizedBox(
          width: 60,
        ),
        Image.asset(
          "assets/ic_like.png",
          width: 30,
          height: 30,
        )
      ],
    );
  }

  Widget ButtonBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.red)),
            child: Padding(
              padding: EdgeInsets.only(left: 40.w, right: 40.w),
              child: Text(
                "Follow",
              ),
            )),
        Card(
          elevation: 1,
          child: Container(
            margin: EdgeInsets.all(6.h),
            child: Image.asset(
              "assets/ic_instagram.png",
              width: 20.w,
              height: 20.h,
            ),
          ),
        ),
        Card(
          elevation: 1,
          child: Padding(
            padding: EdgeInsets.all(12.h),
            child: Image.asset(
              "assets/ic_cek_semua.png",
              width: 10.w,
              height: 10.h,
              scale: 1,
            ),
          ),
        )
      ],
    );
  }

  Widget AccountInformation() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ItemAccountInformation("2", "Following"),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ItemAccountInformation("2.5M", "Followers"),
        ),
        ItemAccountInformation("56K", "Likes")
      ],
    );
  }

  Widget ItemAccountInformation(String totalFollowing, String textName) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.sp),
          "${totalFollowing}",
        ),
        Text("${textName}", style: TextStyle(fontSize: 15.sp))
      ],
    );
  }

  Widget Header() {
    return Padding(
      padding: EdgeInsets.only(top: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.h),
            child: Text(
              "Yanuar Code",
              style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_outlined))
        ],
      ),
    );
  }
}
