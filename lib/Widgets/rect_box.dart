import 'package:flutter/material.dart';

class RectBox extends StatelessWidget {
  final String title;
  final String subTitle;
  const RectBox(this.title, this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(
              1.0,
              1.0,
            ),
            blurRadius: 2.0,
            spreadRadius: 2.0,
          ),
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 12, color: Colors.black38),
        ),
        subtitle: Text(
          subTitle,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
