import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    const destinations = [
      NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
      NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Shorts'),
      NavigationDestination(icon: Icon(Icons.home_outlined), label: '구독'),
      NavigationDestination(icon: Icon(Icons.play_lesson_outlined), label: '보관함'),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        //leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)), // 왼쪽 메뉴버튼
        title: Image.asset('assets/images/youtube_logo.png'),
        //centerTitle: true, // 타이틀 텍스트를 가운데로 정렬 시킴
        actions: [
          // 우측의 액션 버튼들
          IconButton(onPressed: () {}, icon: const Icon(Icons.ios_share)),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 20,
                      height: 20,
                      child: Image(
                        image: AssetImage('assets/images/compass_white.png'),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    MenuTab(
                      textColor: Colors.black,
                      backgroundColor: Colors.white,
                      text: '전체',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '게임',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(text: '뉴스'),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '실시간',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '믹스',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '노래',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '코딩',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '코딩',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '코딩',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '코딩',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    MenuTab(
                      text: '코딩',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),
              const PlayList(),
              SizedBox(
                height: 200,
                child: Image.asset('assets/images/image2.png'),
              ),
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
              SingleChildScrollView(
                //TODO: SingleChildScrollView 안에 ListView쓰면 SingleChildScrollView 스크롤 안됨
                //안에 (스크롤 방향이 다른) SingleChildScrollView 2개를 쓰는 건 괜찮음
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      width: 230,
                      child: Image.asset('assets/images/woman.jpeg'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 300,
                      width: 230,
                      child: Image.asset('assets/images/woman.jpeg'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 300,
                      width: 230,
                      child: Image.asset('assets/images/woman.jpeg'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      height: 300,
                      width: 230,
                      child: Image.asset('assets/images/woman.jpeg'),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                  ],
                ),
              ),
              const SizedBox(),
              const PlayList(),
              const SizedBox(height: 20),
              const PlayList(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.black,
        selectedIndex: 0,
        destinations: destinations,
      ),
    );
  }
}

class PlayList extends StatelessWidget {
  const PlayList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/oh_sam.jpg'),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
            SizedBox(width: 10),
            Column(
              children: [
                //TODO: Class만들어서 넘겨야
                Text(
                  '스파6 - 세번 잡히면 죽습니다.',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  '아배킹. 조회수 4만회, 9시간전',
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
            //TODO: space around로 하고 늘리긴 했는데 이렇게 하는게 맞을까
            SizedBox(width: 80),
            Icon(
              Icons.more_vert,
              color: Colors.white,
            )
          ],
        ),
      ],
    );
  }
}

class MenuTab extends StatelessWidget {
  final Color? backgroundColor;
  final Color? textColor;
  final String text;

  const MenuTab({
    super.key,
    this.backgroundColor = const Color.fromRGBO(39, 39, 39, 1.0),
    this.textColor = Colors.white,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: Container에 넣고 SizedBox에 넣는것 말고 다른 방법이 있을까? 배경색때문에 Container, 크기 때문에 Sizedbox
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: backgroundColor),
      child: SizedBox(
        height: 30,
        width: 45,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
