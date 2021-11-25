import 'package:flutter/material.dart';

class AddressSubtitle extends StatelessWidget {
  final String subTitle;
  const AddressSubtitle(this.subTitle, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 55, right: 15, bottom: 10),
      child: Text(
        subTitle,
        maxLines: 3,
        style: const TextStyle(
            color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold),
      ),
    );
  }
}
