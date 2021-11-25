import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/colors.dart';

class TitleIconRow extends StatelessWidget {
  final IconData icon;
  final String text;
  const TitleIconRow(this.icon, this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.green.shade100,
                child: Icon(
                  icon,
                  color: primaryColor,
                ),
              ),
            ),
            Text(
              text,
              style: const TextStyle(color: Colors.black38, fontSize: 13),
            )
          ],
        ));
  }
}
