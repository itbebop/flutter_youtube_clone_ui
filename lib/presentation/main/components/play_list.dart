import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayList extends StatelessWidget {
  const PlayList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://kr.bandisoft.com/honeycam/howto/imgs/before.gif',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 218,
              left: 365,
              child: SizedBox(
                width: 38,
                height: 18,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 218,
              left: 367,
              child: Text(
                '16:21',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Positioned(
              bottom: 0.001,
              child: Container(
                color: Colors.white.withOpacity(0.5),
                child: const SizedBox(
                  width: 410,
                  height: 3, //width는 없어도
                ),
              ),
            ),
            Positioned(
              bottom: 0.1,
              child: Container(height: 7, width: 7, alignment: Alignment.center, decoration: const BoxDecoration(color: Colors.red, shape: BoxShape.circle)),
            ),
          ],
        ),
        const SizedBox(height: 10),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/oh_sam.jpg'),
              ),
            ),

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
