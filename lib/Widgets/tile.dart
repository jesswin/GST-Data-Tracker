import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/colors.dart';

class Tile extends StatelessWidget {
  final String title;
  final dynamic subtitle;

  const Tile(this.title, this.subtitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
          style: const TextStyle(fontSize: 16, color: Colors.black38)),
      subtitle: Text(
        subtitle,
        style: const TextStyle(fontSize: 22, color: textColor),
      ),
    );
  }
}
