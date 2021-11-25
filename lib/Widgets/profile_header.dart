import 'package:flutter/material.dart';
import 'package:masters_gst/Utilities/colors.dart';
import 'package:masters_gst/Widgets/status.dart';
import 'package:masters_gst/Widgets/tile.dart';

class ProfileHeader extends StatelessWidget {
  final String gstIn;
  final String companyName;
  final String status;
  const ProfileHeader(this.gstIn, this.companyName, this.status, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Tile("GSTIN of the Tax Payer", gstIn),
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            companyName,
            style: const TextStyle(color: textColor),
          ),
        ),
        Status(status)
      ],
    );
  }
}
