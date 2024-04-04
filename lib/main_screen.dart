import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)), // 왼쪽 메뉴버튼
        title: Image.asset('assets/images/youtube_logo.png'),
        //centerTitle: true, // 타이틀 텍스트를 가운데로 정렬 시킴
        actions: [
          // 우측의 액션 버튼들
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
        backgroundColor: Colors.black, // AppBar의 배경색상
        foregroundColor: Colors.white, // AppBar속 요소들의 색상
        elevation: 10, // AppBar의 그림자 깊이
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "여기",
              style: TextStyle(fontSize: 50),
            ),
          ],
        ),
      ),
      //bottomNavigationBar: NavigationBar(destinations: [],),
    );
  }
}
