import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/colors.dart';

class Status extends StatelessWidget {
  final String statusText;
  const Status(this.statusText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      margin: const EdgeInsets.only(left: 20.0, top: 10),
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: textColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        CircleAvatar(
          radius: 5,
          backgroundColor: statusText != "Active" ? Colors.red : primaryColor,
        ),
        Expanded(
          child: Text(
            statusText,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: primaryColor,
            ),
          ),
        ),
      ]),
    );
  }
}
