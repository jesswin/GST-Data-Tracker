import 'package:flutter/material.dart';
import 'package:masters_gst/Widgets/address_subtitles.dart';
import 'package:masters_gst/Widgets/title_icon_row.dart';

class AddressBox extends StatelessWidget {
  final String address;
  const AddressBox(this.address, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleIconRow(Icons.location_on, "Principal Place of Buissness"),
          AddressSubtitle(address),
          const TitleIconRow(Icons.store, "Additional Place of Buissness"),
          const AddressSubtitle("Floor")
        ],
      ),
    );
  }
}
