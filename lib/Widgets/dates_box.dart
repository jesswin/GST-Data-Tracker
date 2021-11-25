import 'package:flutter/material.dart';
import 'package:masters_gst/Widgets/date_box.dart';

class DatesBox extends StatelessWidget {
  final String date;
  const DatesBox(this.date, {Key? key}) : super(key: key);

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
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          DateBox("Date of Registration", date),
          const Spacer(),
          const DateBox("Date of Cancellation", "--")
        ],
      ),
    );
  }
}
