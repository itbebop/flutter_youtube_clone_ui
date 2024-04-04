import 'package:flutter/material.dart';

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
