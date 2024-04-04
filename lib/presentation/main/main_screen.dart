import 'package:flutter/material.dart';
import 'package:flutter_youtube_clone_ui/presentation/main/components/menu_tap.dart';
import 'package:flutter_youtube_clone_ui/presentation/main/components/play_list.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // build 밑에다가 하면 1로 초기화돼서 이 위치에 둬야함
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    const taps = [
      NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.play_arrow_outlined), label: 'Shorts'),
      NavigationDestination(
          icon: Image(
            image: AssetImage('assets/images/add_circle.png'),
          ),
          label: ''),
      NavigationDestination(icon: Icon(Icons.play_circle_outline_rounded), label: '구독'),
      NavigationDestination(icon: Icon(Icons.shop_two_rounded), label: '보관함'),
    ];
    var shorts = [
      SizedBox(
        height: 370,
        width: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.network(
            'https://images.wondershare.kr/dc/My_Project2.gif',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 16),
      SizedBox(
        height: 370,
        width: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/woman.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 16),
      SizedBox(
        height: 370,
        width: 230,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(
            'assets/images/woman.jpeg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      const SizedBox(width: 16),
    ];
    Row row = const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 10),
        SizedBox(
          width: 20,
          height: 20,
          child: Image(
            image: AssetImage('assets/images/compass_white.png'),
          ),
        ),
        SizedBox(width: 15),
        MenuTab(
          textColor: Colors.black,
          backgroundColor: Colors.white,
          text: '전체',
        ),
        SizedBox(width: 10),
        MenuTab(
          text: '게임',
        ),
        SizedBox(width: 10),
        MenuTab(text: '뉴스'),
        SizedBox(width: 10),
        MenuTab(text: '실시간'),
        SizedBox(width: 10),
        MenuTab(text: '믹스'),
        SizedBox(width: 10),
        MenuTab(text: '노래'),
        SizedBox(width: 10),
        MenuTab(text: '코딩'),
        SizedBox(width: 10),
        MenuTab(text: '코딩'),
        SizedBox(width: 10),
        MenuTab(text: '코딩'),
        SizedBox(width: 10),
        MenuTab(text: '코딩'),
        SizedBox(width: 10),
        MenuTab(text: '코딩'),
        SizedBox(width: 10),
      ],
    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)), // 왼쪽 메뉴버튼
        title: Image.asset('assets/images/youtube_logo.png'),
        //centerTitle: true, // 타이틀 텍스트를 가운데로 정렬 시킴
        actions: [
          // 우측의 액션 버튼들
          IconButton(onPressed: () {}, icon: const Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          const SizedBox(
            width: 30,
            height: 30,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/oh_sam.jpg'),
            ),
          ),
          const SizedBox(
            width: 15, // margin 주는 방법도 있을까?
          ),
        ],
        backgroundColor: Colors.black, // AppBar의 배경색상
        foregroundColor: Colors.white, // AppBar속 요소들의 색상
        elevation: 10, // AppBar의 그림자 깊이
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: row,
            ),
            const SizedBox(height: 10),
            const PlayList(),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: Image.asset('assets/images/image2.png', fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '자세히 알아보기',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(
                        Icons.ios_share_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        '프론트엔트 모니터링 모범 사례',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        '모던 프론트엔드 모니터링의 모범 사례를 확인해 보세요.',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      Text(
                        '광고',
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Datadog',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    //TODO: 왼쪽 정렬 시키려고 일부러 Row에 넣는 건 너무 자원 낭비인가
                    children: [
                      SizedBox(
                        height: 50,
                        child: Image.asset('assets/images/shorts.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              //TODO: SingleChildScrollView 안에 ListView쓰면 SingleChildScrollView 스크롤 안됨
              //안에 (스크롤 방향이 다른) SingleChildScrollView 2개를 쓰는 건 괜찮음
              scrollDirection: Axis.horizontal,

              child: Row(
                children: shorts,
              ),
            ),
            const SizedBox(height: 20),
            const PlayList(),
            const SizedBox(height: 20),
            const PlayList(),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        destinations: taps,
        indicatorColor: Colors.white,
        selectedIndex: selectIndex,
        animationDuration: const Duration(seconds: 2),
        onDestinationSelected: (value) {
          setState(() {
            selectIndex = value;
          });
        },
      ),
    );
  }
}
