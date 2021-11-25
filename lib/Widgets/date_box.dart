import 'package:flutter/material.dart';

class DateBox extends StatelessWidget {
  final String title;
  final String subTitle;
  const DateBox(this.title, this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.black38),
        ),
        Text(
          subTitle,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
