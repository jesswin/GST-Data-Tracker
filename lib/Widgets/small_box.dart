import 'package:flutter/material.dart';

class SmallBox extends StatelessWidget {
  final String title;
  final String subTitle;
  const SmallBox(this.title, this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
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
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 12,
                  )),
              Text(subTitle,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ));
  }
}
